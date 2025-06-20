# Resume Maintenance Quick Reference

## Quick Edits

### Adding New Experience
Edit `resume/experience.tex` and add a new `\cventry`:

```latex
\cventry
  {Job Title}
  {Company Name}
  {Location}
  {Start Date – End Date}
  {
    \begin{cvitems}
      \item {Achievement or responsibility 1}
      \item {Achievement or responsibility 2}
      \item {Achievement or responsibility 3}
    \end{cvitems}
  }
```

### Adding New Skills
Edit `resume/skills.tex` and add a new `\cvskill`:

```latex
\cvskill
  {Skill Category} % e.g., "Languages", "Frameworks"
  {Skill1, Skill2, Skill3, Skill4} % Comma-separated list
```

### Updating Summary
Edit `resume/summary.tex` to modify the professional summary text.

### Adding Education
Edit `resume/education.tex` and add a new `\cventry` following the same format as experience.

## Building the Resume

1. **Quick build:** `./build.sh`
2. **Manual build:** `xelatex resume.tex`
3. **Clean build:** `rm *.aux *.log *.out && xelatex resume.tex`

## Customization Tips

- **Colors:** Change `\colorlet{awesome}{awesome-skyblue}` in `resume.tex`
- **Layout:** Modify margins in `\geometry{...}` in `resume.tex`
- **Section Order:** Rearrange `\input{...}` lines in `resume.tex`
- **Contact Info:** Update personal information section in `resume.tex`

## Common Issues

- **Font errors:** Ensure LaTeX can find fonts in `fonts/` directory
- **Compilation errors:** Check for unescaped special characters (&, %, $, etc.)
- **Spacing issues:** Use `\\` for line breaks, `\vspace{0.5em}` for extra space
- **Missing packages:** If you get "package not found" errors, install with `sudo tlmgr install package-name`
- **FontAwesome errors:** If FontAwesome icons don't show, ensure fonts are installed in `~/Library/Fonts/`
- **Structure errors:** Ensure all `\begin{environment}` have matching `\end{environment}` tags
- **Overfull/Underfull box warnings:** These are usually minor formatting warnings and don't prevent compilation

## Package Installation

If you encounter missing package errors, install them with:
```bash
sudo tlmgr install package-name
```

Common packages you might need:
- `enumitem` - for list formatting
- `xifthen` - for conditional statements
- `ifmtarg` - for argument testing
- `tikzfill` - for advanced graphics
- `fontawesome` - for icons (optional, we use manual definitions)
