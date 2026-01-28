from docx import Document
from pathlib import Path
import sys

if len(sys.argv) < 2:
    print("Usage: extract_docx_tables.py <docx_path>")
    sys.exit(1)

docx_path = Path(sys.argv[1])
if not docx_path.exists():
    print(f"File not found: {docx_path}")
    sys.exit(1)

doc = Document(str(docx_path))

for ti, table in enumerate(doc.tables, start=1):
    print(f"\n[TABLE {ti}]")
    for row in table.rows:
        cells = [cell.text.replace("\n", " ").strip() for cell in row.cells]
        print(" | ".join(cells))
