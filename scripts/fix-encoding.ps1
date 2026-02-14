# Fix mojibake (double-encoded UTF-8) in HTML files
# The issue: UTF-8 text was saved as if it were Windows-1252, then re-encoded to UTF-8
# Solution: for each file, read as UTF-8, convert mojibake chars back to 1252 bytes, re-read as UTF-8

$base = "c:\Users\Mamabru\Documents\GitHub\Progetti\badiani1932B2B\badianibroshure"

$files = @(
  "index.html",
  "magazine\index.html",
  "b2b\index.html",
  "eventi\index.html",
  "eventi\evento-esterno\index.html",
  "eventi\saletta-privata-tosinghi\index.html",
  "eventi\speciale-aziende\index.html"
)

# Build replacement table: mojibake string => correct string
$map = @{}

# Helper: given correct UTF-8 char, compute its mojibake representation
# UTF-8 bytes -> each byte interpreted as Windows-1252 char -> that string is the mojibake
$enc1252 = [System.Text.Encoding]::GetEncoding(1252)
$utf8 = [System.Text.Encoding]::UTF8

# Characters we know are affected (from the grep results)
$targets = @(
  [char]0x2014,  # em dash
  [char]0x2013,  # en dash  
  [char]0x2019,  # right single quote
  [char]0x201C,  # left double quote
  [char]0x201D,  # right double quote
  [char]0x2018,  # left single quote
  [char]0x2022,  # bullet
  [char]0x2190,  # left arrow
  [char]0x00E9,  # e accent
  [char]0x00E8,  # e grave
  [char]0x00EC,  # i grave
  [char]0x00F2,  # o grave
  [char]0x00F9,  # u grave
  [char]0x00E0,  # a grave
  [char]0x00C9,  # E accent
  [char]0x00C0,  # A grave
  [char]0x00E1,  # a acute
  [char]0x00E2,  # a circumflex
  [char]0x00F4,  # o circumflex
  [char]0x00B7,  # middle dot
  [char]0x00FC,  # u umlaut
  [char]0x00F1,  # n tilde
  [char]0x00F6,  # o umlaut
  [char]0x00E4,  # a umlaut
  [char]0x00E7,  # c cedilla
  [char]0x00EA,  # e circumflex
  [char]0x00EE,  # i circumflex
  [char]0x00E3,  # a tilde
  [char]0x00EB,  # e diaeresis
  [char]0x00EF,  # i diaeresis
  [char]0x00ED,  # i acute
  [char]0x00FA,  # u acute
  [char]0x00FB,  # u circumflex
  [char]0x00F3,  # o acute
  [char]0x20AC,  # euro sign €
  [char]0x2192,  # right arrow →
  [char]0x2714,  # checkmark ✔
  [char]0x00BF,  # inverted question mark ¿
  [char]0x2026,  # ellipsis …
  [char]0x00C8,  # E grave È
  [char]0x00C2,  # A circumflex Â
  [char]0x00DA,  # U acute Ú
  [char]0x00B0,  # degree symbol °
  [char]0x00BA,  # masculine ordinal º
  [char]0x00D3,  # O acute Ó
  [char]0x00D1,  # N tilde Ñ
  [char]0x00DC,  # U umlaut Ü
  [char]0x00D6,  # O umlaut Ö
  [char]0x00C7,  # C cedilla Ç
  [char]0x00CB,  # E diaeresis Ë
  [char]0x00CA,  # E circumflex Ê
  [char]0x00CE,  # I circumflex Î
  [char]0x00D4,  # O circumflex Ô
  [char]0x00CF,  # I diaeresis Ï
  [char]0x00CD,  # I acute Í
  [char]0x00CC,  # I grave Ì
  [char]0x00D2,  # O grave Ò
  [char]0x00D9,  # U grave Ù
  [char]0x00AA   # feminine ordinal ª
)

foreach ($ch in $targets) {
  $correctStr = [string]$ch
  $correctBytes = $utf8.GetBytes($correctStr)
  # Each UTF-8 byte, interpreted as a Windows-1252 character
  $mojibakeStr = $enc1252.GetString($correctBytes)
  if ($mojibakeStr -ne $correctStr) {
    $map[$mojibakeStr] = $correctStr
  }
}

Write-Host "Built $($map.Count) replacement rules"

# Sort by length descending to replace longer sequences first (multi-byte before single-byte)
$sortedKeys = $map.Keys | Sort-Object { $_.Length } -Descending

foreach ($relPath in $files) {
  $fullPath = Join-Path $base $relPath
  if (!(Test-Path $fullPath)) {
    Write-Host "SKIP (not found): $relPath"
    continue
  }

  $content = [System.IO.File]::ReadAllText($fullPath, $utf8)
  $original = $content
  $changeCount = 0

  foreach ($key in $sortedKeys) {
    $val = $map[$key]
    $before = $content
    $content = $content.Replace($key, $val)
    if ($content -ne $before) {
      $n = ([regex]::Matches($before, [regex]::Escape($key))).Count
      $changeCount += $n
    }
  }

  if ($content -ne $original) {
    # Write back as UTF-8 with BOM
    [System.IO.File]::WriteAllText($fullPath, $content, (New-Object System.Text.UTF8Encoding $true))
    Write-Host "FIXED: $relPath ($changeCount replacements)"
  } else {
    Write-Host "NO CHANGES: $relPath"
  }
}

Write-Host "`nEncoding fix complete!"
