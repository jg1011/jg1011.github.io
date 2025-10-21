# Jacob Green's Person Site

## Features

- **Minimal Design**: Clean, modern minimalist aesthetic with no JavaScript dependencies (except MathJax for LaTeX)
- **Responsive Layout**: Works on desktop, tablet, and mobile devices
- **Markdown Articles**: Full markdown support with LaTeX rendering via MathJax 3
- **Expandable Sections**: CSS-only expandable project and library summaries
- **GitHub Pages Ready**: Configured for automatic deployment via GitHub Pages
- **External Articles**: Support for articles hosted in separate repositories via Git submodules

## Site Structure

```
├── _config.yml              # Jekyll configuration
├── _layouts/
│   ├── default.html         # Base layout with MathJax
│   └── article.html         # Article-specific layout with MathJax
├── assets/
│   ├── css/
│   │   └── main.css         # Styles and responsive design
│   └── images/              # Project images and profile photo
├── articles/                # Git submodule → external articles repo
│   ├── standalone/          # Standalone articles
│   └── series/              # Multi-part article series
├── index.md                 # Contents, as per Jekyll convention
└── README.md                
```

## License

This website is open source and available under the MIT License.
