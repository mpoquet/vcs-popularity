{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/20.03.tar.gz") {}
}:

let
  self = rec {
    inherit pkgs;
    notebook = pkgs.stdenv.mkDerivation rec {
      pname = "vcs-popularity-notebook";
      version = "1.0.0";
      src = ./.;
      buildInputs = with pkgs; [
        R
        rPackages.tidyverse
        rPackages.viridis
        # Rmarkdown-related tools
        rPackages.knitr
        rPackages.rmarkdown
        pandoc
      ];
      buildPhase = ''
        Rscript run-notebook.R
      '';
      installPhase = ''
        mkdir -p $out
        mv notebook.html $out/
      '';
    };
  };
in
  self
