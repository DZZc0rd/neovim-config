local success, matugen = pcall(require, "matugen")

if not success then
    vim.notify("`matugen.nvim` is not installed. Using `catppuccin` instead", vim.log.levels.WARN)
    vim.cmd("colorscheme catppuccin")

    return
end

matugen.setup({
    palette_path = "~/.config/matugen-theme/nvim.json",
    load_theme = true,
})
