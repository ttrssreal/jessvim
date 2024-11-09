{
  description = "jessvim";

  inputs.nixvim.url = "github:nix-community/nixvim";

  outputs = { nixvim, ... }: {
    homeModules.default = {
      imports = [
        nixvim.homeManagerModules.nixvim
        ./plugins
        ./keymaps.nix
        ./options.nix
        ./lsp.nix
      ];
    
      programs.nixvim = {
        enable = true;
        defaultEditor = true;
        colorschemes.tokyonight.enable = true;
    
        globals = {
          mapleader = " ";
          maplocalleader = "\\";
        };
      };
    };
  };
}
