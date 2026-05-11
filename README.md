# Kaustav's Portfolio Website

A modern, responsive portfolio website with an integrated LaTeX resume builder. Showcases my skills, projects, and professional experience in Data Engineering, Cloud Platforms, and AI-enabled Analytics.

[Visit My Portfolio](https://Kaustav-Purkayastha.github.io/portfolio/)

---

## Features

- **Responsive Design**: Works seamlessly on devices of all sizes
- **Light/Dark Mode**: Toggle between light and dark themes
- **Interactive UI**: Smooth animations and transitions
- **Resume Builder**: LaTeX-based ATS-friendly resume with one-command PDF generation
- **Resume Section**: Preview and download resume directly from the site
- **Project Showcase**: Filterable project gallery with timelines
- **Certifications & Education**: Professional and academic credentials
- **Sticky Skills Legend**: Always visible skill proficiency levels while scrolling
- **Contact Info**: Direct links to email, LinkedIn, GitHub, YouTube, and blog

---

## Technology Stack

**Website:**
- HTML5, CSS3 (Flexbox, Grid, Custom Properties)
- Vanilla JavaScript (ES6+)
- Component-based Architecture
- Font Awesome Icons, Google Fonts

**Resume Builder:**
- LaTeX (XeLaTeX) with MiKTeX distribution
- PowerShell build script
- Packages: fontspec, fontawesome5, hyperref, geometry, tabularx, enumitem, titlesec, xcolor, ulem

---

## Project Structure

```
portfolio/
├── index.html
├── portfolio_content.txt        # All website text content (reference)
├── resume_content.txt           # All resume text content (reference)
├── css/
│   ├── base.css
│   ├── common.css
│   ├── responsive.css
│   └── components/
│       ├── header.css
│       ├── hero.css
│       ├── about.css
│       ├── resume.css
│       ├── experience.css
│       ├── projects.css
│       ├── certifications.css
│       ├── education.css
│       ├── achievements.css
│       ├── skills.css
│       ├── contact.css
│       ├── footer.css
│       ├── modal.css
│       └── custom-icons.css
├── components/
│   ├── header.html
│   ├── hero.html
│   ├── about.html
│   ├── resume.html
│   ├── experience.html
│   ├── projects.html
│   ├── certifications.html
│   ├── education.html
│   ├── achievements.html
│   ├── skills.html
│   ├── contact.html
│   ├── footer.html
│   └── modal.html
├── js/
│   ├── main.js
│   └── template-engine.js
├── resume/
│   ├── resume.tex               # LaTeX source
│   └── build.ps1                # PowerShell build script
└── assets/
    ├── favicon.svg
    ├── images/
    ├── projects/
    └── resumes/
        └── Kaustav_Purkayastha_Resume.pdf
```

---

## Setup and Deployment

### Website

This website is designed to be hosted on GitHub Pages:

1. Fork or clone this repository
2. Enable GitHub Pages in your repository settings
3. The site will be available at `https://Kaustav-Purkayastha.github.io/portfolio/`

For local development:

1. Clone the repository
2. Run a local server: `python -m http.server 8080`
3. Open `http://localhost:8080` in your browser

### Resume Builder

#### Prerequisites

Install MiKTeX (LaTeX distribution with XeLaTeX):

```powershell
winget install MiKTeX.MiKTeX
```

After installation, restart your terminal so `xelatex` is available in PATH. MiKTeX will auto-install any missing LaTeX packages on first compile.

The resume uses **Arial** font via `fontspec` — this is available by default on Windows.

#### Building the Resume

```powershell
cd resume
.\build.ps1
```

This compiles `resume.tex` with XeLaTeX (two passes for cross-references) and outputs the PDF to `assets/resumes/Kaustav_Purkayastha_Resume.pdf`.

#### Editing the Resume

1. Edit `resume.tex` in the `resume/` directory
2. Run `.\build.ps1` to regenerate the PDF
3. Reference `resume_content.txt` for all text content in one place

---

## Content Reference Files

- **`portfolio_content.txt`** — All visible text from every section of the portfolio website
- **`resume_content.txt`** — All resume content (skills, experience, projects, education, certifications)

These files serve as a single source of truth for updating content across the site and resume.

---

## Credits

- Icons: [Font Awesome](https://fontawesome.com/)
- Fonts: [Google Fonts](https://fonts.google.com/)

---

## License

This project is licensed under the Creative Commons Attribution 4.0 International License.
