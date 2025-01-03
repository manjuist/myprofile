local wezterm = require("wezterm")

return {
    color_scheme = "terafox",

    font = wezterm.font_with_fallback({
        "CartographCF Nerd Font Mono",
        "Source Han Sans SC",
    }),

    font_size = 14.0,

    enable_tab_bar = false,

    default_prog = { "/Users/mdvis/.local/bin/tmux" },
}