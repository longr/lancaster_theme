## Lancaster beamer theme (LaTeX, Markdown, RMarkdown)

* Based on the Metropolis theme
* Follows university branding / guidelines.
* Make file and examples for LaTeX, Markdown, RMarkdown files.


## Usage

1. Download the source with `git clone` - `git clone git@github.com:longr/lancaster_theme.git`.
2. `cd` into the directory and change as needed.
3. Compile with the `Makefile`
   - `make rmd2pdf` for RMarkdown
   - `make md2pdf` for Markdown
   - `make tex2pdf` for LaTeX

## Options

### Logo

The position of the logo needs changing depending on the size. The default logo is the University logo.  If you wish to use a departmental logo, then use the `logodept` option (examples are given in each file type).  You will need to replace the file `img/dept-logo.png` with your departmental logo.

