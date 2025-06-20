# Resume Template - Mike Vardy

A professional LaTeX resume template based on the [Awesome-CV](https://github.com/posquit0/Awesome-CV) template, customized for a Senior Full Stack Developer position.

## Overview

This repository contains a modern, clean resume template built with LaTeX that showcases 14+ years of full-stack development experience. The template is optimized for technical professionals in web development, with sections for experience, skills, education, and projects.

## Prerequisites

To compile this resume, you'll need:

- **XeLaTeX** (recommended) or **pdfLaTeX**
- **LaTeX distribution** such as:
  - **MacTeX** (macOS)
  - **TeX Live** (Linux)
  - **MiKTeX** (Windows)

### Installation

#### macOS
```bash
# Install MacTeX (includes XeLaTeX) - Full installation
brew install --cask mactex

# Or for a smaller installation, install BasicTeX and required packages
brew install --cask basictex
sudo tlmgr update --self
sudo tlmgr install collection-fontsrecommended xetex fontspec enumitem xifthen ifmtarg tikzfill

# After installation, update PATH (restart terminal or run):
eval "$(/usr/libexec/path_helper)"

# Install fonts system-wide for XeLaTeX (run from project directory):
cp fonts/*.ttf ~/Library/Fonts/
```

#### Ubuntu/Debian
```bash
sudo apt-get update
sudo apt-get install texlive-xetex texlive-fonts-recommended texlive-latex-extra

# Install additional packages if needed:
sudo apt-get install texlive-pictures texlive-science
```

#### Windows
Download and install MiKTeX from [miktex.org](https://miktex.org/)

## Quick Start

For first-time users, follow these steps:

1. **Install LaTeX** (choose one):
   - **Full installation**: `brew install --cask mactex` (3GB+)
   - **Minimal installation**: `brew install --cask basictex` (100MB)

2. **Install required packages** (if using BasicTeX):
   ```bash
   sudo tlmgr update --self
   sudo tlmgr install collection-fontsrecommended xetex fontspec enumitem xifthen ifmtarg tikzfill
   ```

3. **Update PATH** (restart terminal or run):
   ```bash
   eval "$(/usr/libexec/path_helper)"
   ```

4. **Install fonts**:
   ```bash
   cp fonts/*.ttf ~/Library/Fonts/
   ```

5. **Test compilation**:
   ```bash
   ./build.sh
   ```

6. **Customize your information** in `resume.tex` and section files in `resume/` directory.

See [`MAINTENANCE.md`](MAINTENANCE.md) for detailed editing instructions.

## Usage

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd resume
   ```

2. **Compile the resume:**
   
   **Option 1: Use the build script (recommended):**
   ```bash
   ./build.sh
   ```
   
   **Option 2: Manual compilation:**
   ```bash
   xelatex resume.tex
   ```
   
   Or if you prefer pdfLaTeX:
   ```bash
   pdflatex resume.tex
   ```

3. **View the output:**
   The compiled PDF will be generated as `resume.pdf` and will automatically open on macOS.

### Build Script Features

The `build.sh` script provides several conveniences:
- Automatically detects and uses the best available LaTeX compiler (XeLaTeX > pdfLaTeX)
- Provides clear error messages and installation guidance
- Automatically cleans up auxiliary files after compilation
- Opens the PDF automatically on macOS
- Handles compilation errors gracefully

## Structure

```
├── resume.tex              # Main resume file
├── awesome-cv.cls          # LaTeX class file (styling)
├── build.sh               # Compilation script
├── fonts/                  # Font files (Roboto, FontAwesome)
│   ├── FontAwesome.ttf
│   └── Roboto-*.ttf
└── resume/                 # Resume sections
    ├── summary.tex         # Professional summary
    ├── skills.tex          # Technical skills
    ├── experience.tex      # Work experience
    └── education.tex       # Education section
```

## Customization

### Personal Information
Edit the personal information section in `resume.tex`:

```latex
\name{Your}{Name}
\position{Your Position Title}
\mobile{Your Phone}
\email{your.email@domain.com}
\homepage{your-website.com}
\github{YourGitHub}
\linkedin{Your LinkedIn}
```

### Content Sections
Each section is modular and stored in the `resume/` directory:

- **Summary**: Edit `resume/summary.tex` - Professional summary highlighting key strengths
- **Skills**: Edit `resume/skills.tex` - Technical skills organized by category  
- **Experience**: Edit `resume/experience.tex` - Work history with achievements
- **Education**: Edit `resume/education.tex` - Educational background

### Colors and Styling
Modify the color scheme in `resume.tex`:

```latex
% Choose from: awesome-emerald, awesome-skyblue, awesome-red, 
% awesome-pink, awesome-orange, awesome-nephritis, awesome-concrete, awesome-darknight
\colorlet{awesome}{awesome-skyblue}
```

## Features

- **Modern Design**: Clean, professional layout optimized for ATS systems
- **Modular Structure**: Easy to customize individual sections
- **Multiple Font Support**: Uses Roboto and FontAwesome fonts
- **Responsive Layout**: Optimized for both digital viewing and printing
- **Color Customization**: Easy color scheme modifications
- **ATS Friendly**: Structure optimized for Applicant Tracking Systems
- **Version Control Ready**: Includes proper .gitignore for LaTeX files
- **Cross-Platform**: Works on macOS, Linux, and Windows
- **Font Fallbacks**: Template works even if custom fonts are unavailable
- **Build Automation**: Intelligent build script with error handling

## Why LaTeX for Resumes?

- **Consistent Formatting**: Never worry about text shifting or formatting breaking
- **Professional Typography**: Superior typesetting compared to word processors
- **Version Control**: Text-based files work perfectly with Git
- **Separation of Content and Style**: Focus on content while maintaining consistent styling
- **Customization**: Extensive customization options for advanced users
- **Cross-Platform Consistency**: Identical output across different systems

## Tips for Best Results

1. **Keep it concise**: Aim for 1-2 pages maximum
2. **Use action verbs**: Start bullet points with strong action words
3. **Quantify achievements**: Include metrics and numbers where possible
4. **Tailor content**: Customize for each job application
5. **Test compilation**: Always compile and review the PDF before sharing

## Troubleshooting

### Common Issues:

**Font errors**: Ensure all fonts in the `fonts/` directory are properly installed or accessible. For macOS, copy fonts to `~/Library/Fonts/`.

**Compilation errors**: Try cleaning auxiliary files:
```bash
rm *.aux *.log *.out *.fdb_latexmk *.fls *.synctex.gz
```

**XeLaTeX not found**: Make sure your LaTeX distribution includes XeLaTeX and restart your terminal after installation.

**Missing packages**: If you encounter "File `package.sty' not found" errors, install missing packages:
```bash
# For BasicTeX users:
sudo tlmgr install package-name

# Common packages you might need:
sudo tlmgr install enumitem xifthen ifmtarg tikzfill fontawesome sourcesanspro
```

**FontAwesome errors**: The template uses custom FontAwesome definitions. If you see FontAwesome-related errors, ensure the FontAwesome.ttf file is in the fonts/ directory and installed system-wide.

**Structure errors**: Ensure all LaTeX environments are properly closed (`\begin{env}` has matching `\end{env}`).

**PATH issues**: After installing BasicTeX, you may need to update your PATH:
```bash
eval "$(/usr/libexec/path_helper)"
# Or restart your terminal
```

### Package Installation Guide

If compilation fails with missing package errors, install them individually:

```bash
# Update package manager first
sudo tlmgr update --self

# Install common required packages
sudo tlmgr install enumitem      # List formatting
sudo tlmgr install xifthen       # Conditional statements  
sudo tlmgr install ifmtarg       # Argument testing
sudo tlmgr install tikzfill      # Advanced graphics
sudo tlmgr install fontawesome   # Icon fonts (optional)
sudo tlmgr install sourcesanspro # Source Sans Pro font
```

### First-Time Setup Checklist

1. ✅ Install LaTeX distribution (MacTeX or BasicTeX)
2. ✅ Update PATH and restart terminal
3. ✅ Install required packages
4. ✅ Copy fonts to system fonts directory
5. ✅ Test compilation with `./build.sh`
6. ✅ Customize personal information in `resume.tex`

## License

This template is based on Awesome-CV, which is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

## Additional Resources

- [Awesome-CV Original Repository](https://github.com/posquit0/Awesome-CV)
- [LaTeX Documentation](https://www.latex-project.org/help/documentation/)
- [MacTeX Documentation](http://www.tug.org/mactex/)
- [Overleaf LaTeX Tutorials](https://www.overleaf.com/learn/latex/Main_Page)

## Contributing

Feel free to submit issues or pull requests to improve this template.

## Support

If you encounter issues:
1. Check the [Troubleshooting](#troubleshooting) section
2. Review [`MAINTENANCE.md`](MAINTENANCE.md) for common editing tasks
3. Ensure all prerequisites are properly installed
4. Try the [First-Time Setup Checklist](#first-time-setup-checklist)
