require("blink-cmp").setup({
    completion = {
        list = { selection = { auto_insert = false } },
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 0,
        },
        ghost_text = { enabled = true },
        keyword = { range = "full" },
    },
    cmdline = {
        completion = { menu = { auto_show = true } },
        keymap = {
            preset = "inherit",

            ["<cr>"] = false,
            ["<tab>"] = { "accept", "fallback" },
        },
    },
    keymap = {
        preset = "none",

        ["<c-space>"] = { "show", "fallback" },

        ["<c-j>"] = { "select_next", "fallback" },
        ["<c-k>"] = { "select_prev", "fallback" },

        ["<cr>"] = { "accept", "fallback" },
    },
})
