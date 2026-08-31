local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.buttons.val = {
    dashboard.button("SPC f", "  Find file"),
    dashboard.button("SPC t", "  Find text"),
    dashboard.button("q", "󰈆  Quit", "ZZ"),
}

dashboard.section.footer.val = require("alpha.fortune")()

dashboard.config.layout[1].val = 12
dashboard.config.layout[3].val = 6

alpha.setup(dashboard.opts)
