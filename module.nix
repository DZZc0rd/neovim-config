inputs: {
  wlib,
  config,
  pkgs,
  ...
}: {
  imports = [wlib.wrapperModules.neovim];

  settings.config_directory = ./.;
  settings.aliases = ["vi"];

  specs.general = with pkgs.vimPlugins; [
    nvim-lspconfig
    blink-cmp
    nvim-treesitter.withAllGrammars
    nvim-autopairs
    alpha-nvim
    fzf-lua
    lualine-nvim
    nvim-notify
    mini-icons
    friendly-snippets
  ];

  specs.matugen = config.nvim-lib.mkPlugin "matugen-nvim" inputs.matugen-nvim;

  runtimePkgs = with pkgs; [
    nixd
    alejandra
    statix
  ];
}
