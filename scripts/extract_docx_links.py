from __future__ import annotations

import json
import zipfile
import xml.etree.ElementTree as ET
from pathlib import Path
import sys

if len(sys.argv) < 2:
    print("Usage: extract_docx_links.py <docx_path>")
    sys.exit(1)

docx_path = Path(sys.argv[1])
if not docx_path.exists():
    print(f"File not found: {docx_path}")
    sys.exit(1)

ns = {
    "w": "http://schemas.openxmlformats.org/wordprocessingml/2006/main",
    "r": "http://schemas.openxmlformats.org/officeDocument/2006/relationships",
}

with zipfile.ZipFile(docx_path) as zf:
    doc = ET.fromstring(zf.read("word/document.xml"))
    rels = ET.fromstring(zf.read("word/_rels/document.xml.rels"))

relmap = {
    rel.attrib["Id"]: rel.attrib.get("Target")
    for rel in rels
    if rel.attrib.get("Type", "").endswith("/hyperlink")
}

links = []

for hl in doc.findall(".//w:hyperlink", ns):
    rid = hl.attrib.get("{http://schemas.openxmlformats.org/officeDocument/2006/relationships}id")
    url = relmap.get(rid)
    if not url:
        continue
    texts = [t.text for t in hl.findall(".//w:t", ns) if t.text]
    title = "".join(texts).strip()
    links.append({"title": title or url, "url": url})

print(json.dumps(links, ensure_ascii=False, indent=2))
