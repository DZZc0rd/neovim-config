-- no-plugin modules
require("vim._core.ui2").enable()
require("config.options")
require("config.keymaps")
require("config.lsp")

-- yes-plugin modules
require("plugins.fzf")
require("plugins.lualine")
require("plugins.blink")
require("plugins.alpha")
require("plugins.matugen")

-- plugins with no configuration
require("nvim-treesitter").setup()
require("nvim-autopairs").setup()
require("notify").setup()
require("mini.icons").setup()
