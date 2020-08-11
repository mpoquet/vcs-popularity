vcs-popularity
--------------

Material to reproduce my study of the adoption of Version Control Systems in open source projects.

- The rendered notebook can be read on [my blog](https://mpoquet.github.io/blog/2020-08-vcs-adoption-in-floss/).
- [vcs-usage-oss.csv](./vcs-usage-oss.csv) gathers data about vcs usage in well-known projects.

Hacking
-------

The base notebook is [notebook.Rmd](./notebook.Rmd).

It can be rendered by calling `Rscript run-notebook.R` (if you have a working Rmarkdown environment)
or `nix-build`.
