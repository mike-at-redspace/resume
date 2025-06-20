#!/bin/bash

# Resume compilation script
# This script compiles the LaTeX resume and handles cleanup

echo "🔨 Compiling resume..."

# Check if xelatex is available, fallback to pdflatex
if command -v xelatex &> /dev/null; then
    echo "Using XeLaTeX..."
    xelatex resume.tex
elif command -v pdflatex &> /dev/null; then
    echo "Using pdfLaTeX..."
    pdflatex resume.tex
else
    echo "❌ Error: No LaTeX compiler found. Please install MacTeX or BasicTeX."
    echo "Run: brew install --cask mactex"
    exit 1
fi

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "✅ Resume compiled successfully! Output: resume.pdf"
    
    # Clean up auxiliary files
    echo "🧹 Cleaning up auxiliary files..."
    rm -f *.aux *.log *.out *.fdb_latexmk *.fls *.synctex.gz
    
    # Open the PDF if on macOS
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "📖 Opening PDF..."
        open resume.pdf
    fi
else
    echo "❌ Compilation failed. Check the output above for errors."
    exit 1
fi
