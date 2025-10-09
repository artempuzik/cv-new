#!/bin/bash

# Generate PDF from Markdown using Pandoc and Prince
# Usage: ./generate-pdf.sh

echo "🚀 Generating PDF resume from Markdown..."

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "❌ Pandoc is not installed. Please install it first:"
    echo "   brew install pandoc"
    exit 1
fi

# Check if prince is installed
if ! command -v prince &> /dev/null; then
    echo "❌ Prince is not installed. Please install it first:"
    echo "   brew install --cask prince"
    exit 1
fi

# Generate HTML from Markdown
echo "📝 Converting Markdown to HTML..."
pandoc generate-resume.md \
    --from markdown \
    --to html5 \
    --css resume-template.css \
    --standalone \
    --metadata title="Artem Puzik - Senior Full-Stack Developer" \
    --output resume.html

if [ $? -eq 0 ]; then
    echo "✅ HTML generated successfully: resume.html"
else
    echo "❌ Failed to generate HTML"
    exit 1
fi

# Generate PDF from HTML using Prince
echo "📄 Converting HTML to PDF..."
prince resume.html \
    --pdf-profile="PDF/A-1b" \
    --pdf-title="Artem Puzik - Senior Full-Stack Developer" \
    --pdf-author="Artem Puzik" \
    --pdf-subject="Senior Full-Stack Developer Resume" \
    --pdf-keywords="Full-Stack, Vue.js, Laravel, TypeScript, AI, DevOps" \
    --output puzik-cv.pdf

if [ $? -eq 0 ]; then
    echo "✅ PDF generated successfully: puzik-cv.pdf"
    echo "📁 Files created:"
    echo "   - resume.html (HTML version)"
    echo "   - puzik-cv.pdf (PDF version)"
    echo ""
    echo "🎉 Resume generation complete!"
else
    echo "❌ Failed to generate PDF"
    exit 1
fi

# Optional: Open PDF
read -p "📖 Open PDF? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    open puzik-cv.pdf
fi
