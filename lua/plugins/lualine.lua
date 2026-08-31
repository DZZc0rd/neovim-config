local function file_ext()
    local ft = vim.o.filetype

    if ft ~= "alpha" then
        return MiniIcons.get("extension", vim.o.filetype) .. " " .. vim.o.filetype
    end
    return "NONE"
end

require("lualine").setup({
    options = {
        component_separators = "",
        section_separators = "",
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = {},
        lualine_c = { "filename", "branch", "diff", "diagnostics" },

        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = { file_ext },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},

        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
})
