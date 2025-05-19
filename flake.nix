{
    description = "Dev shell for latex writting";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs, ... } @ inputs: 
    let
        system = "x86_64-linux";
        pkgs = import inputs.nixpkgs { inherit system; };
    in
    {
        templates.default = {
            path = ./.;
            description = "A general template for latex writting";
        };

        devShells."${system}".default =
        let
          tex = (pkgs.texlive.combine {
                inherit (pkgs.texlive) scheme-medium
                adjustbox titlesec csquotes notoccite wrapfig placeins footmisc
                xcolor svg graphics caption nextpage
                amsmath commath braket mathpazo mathtools
                siunitx spverbatim epigraph  varwidth xargs transparent listings
                algorithmicx hyperref url fancybox ragged2e multirow todonotes
                fontspec  glossaries bigfoot
                ;
          });
        in
          pkgs.mkShell {
            buildInputs = [pkgs.texlab tex];

            shellHook = ''
                alias build="xelatex -interaction=nonstopmode -file-line-error -output-directory=./out ./main.tex"
            '';
            
        };
    };
}
