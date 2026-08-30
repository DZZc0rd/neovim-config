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
    fyler-nvim
    fzf-lua
    lualine-nvim
    noice-nvim
    trouble-nvim
    nvim-notify
    mini-icons
  ];

  specs.matugen = config.nvim-lib.mkPlugin "matugen-nvim" inputs.matugen-nvim;

  runtimePkgs = with pkgs; [
    nixd
    alejandra
    statix
  ];
}
