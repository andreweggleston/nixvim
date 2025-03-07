{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;

    settings = {
      indent = {
        enable = true;
      };
      highlight = {
        enable = true;
      };
    };

    folding = true;
    nixvimInjections = true;
    grammarPackages = [
      #pkgs.vimPlugins.nvim-treesitter.allGrammars;
      pkgs.tree-sitter-grammars.tree-sitter-c
      pkgs.tree-sitter-grammars.tree-sitter-ocaml
      pkgs.tree-sitter-grammars.tree-sitter-nix
    ];
  };
}
