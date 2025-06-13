# PDF to Text Extractor (with OCR & Dark Mode)

This is a lightweight Flask app to extract text from both regular and scanned PDF documents using OCR (Tesseract). It features a toggleable dark/light mode and a user-friendly UI.

## 🚀 Features
- Extract text from regular PDFs
- OCR support for scanned PDFs (images)
- Dark/Light mode toggle
- Works offline
- Built with Flask + HTML + Tailwind CSS


## 🧰 Tech Stack
- Python (Flask)
- PyMuPDF
- Tesseract OCR (via `pytesseract`)
- Tailwind CSS
- HTML

## 📦 Requirements

- Python 3.8+
- Tesseract OCR installed (for scanned PDFs)
- Poppler installed (for PDF image conversion)

## 🛠️ How to Run Locally

```bash
git clone https://github.com/your-username/pdf-text-extractor.git
cd pdf-text-extractor
pip install -r requirements.txt
python app.py
