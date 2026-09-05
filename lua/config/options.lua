local o = vim.o

o.number = true
o.relativenumber = true
o.scrolloff = 12

o.incsearch = true
o.ignorecase = true
o.smartcase = true

o.confirm = true
o.swapfile = false
o.backup = false
o.writebackup = false
o.undofile = true

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
o.smartindent = true

o.splitbelow = true
o.splitright = true
o.splitkeep = "screen"

o.signcolumn = "yes"
o.cmdheight = 0
o.showmatch = true
o.cursorline = true

o.termguicolors = true
o.background = "dark"

vim.opt.clipboard:append("unnamedplus")
