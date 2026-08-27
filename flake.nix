{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    wrappers.url = "github:birdeehub/nix-wrapper-modules";
    wrappers.inputs.nixpkgs.follows = "nixpkgs";

    matugen-nvim.url = "github:senal-d-a-gunaratna/matugen.nvim";
    matugen-nvim.flake = false;
  };

  outputs = {
    self,
    nixpkgs,
    wrappers,
    ...
  } @ inputs: let
    forEachSystem = nixpkgs.lib.genAttrs nixpkgs.lib.platforms.all;

    module = nixpkgs.lib.modules.importApply ./module.nix inputs;
    wrapper = wrappers.lib.evalModule module;
  in {
    wrappers = rec {
      neovim = wrapper.config;
      default = neovim;
    };

    packages = forEachSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      neovim = self.wrappers.neovim.wrap {inherit pkgs;};
      default = self.packages.${system}.neovim;
    });

    devShells = forEachSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      neovim = pkgs.mkShellNoCc {
        packages = with pkgs; [
          lua-language-server
          stylua

          self.packages.${system}.default
        ];
      };
      default = self.devShells.${system}.neovim;
    });
  };
}
