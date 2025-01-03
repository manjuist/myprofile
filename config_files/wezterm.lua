local wezterm = require("wezterm")

return {
    -- color_scheme = "carbonfox"
    -- color_scheme = "Catppuccin Mocha"
    -- color_scheme = "duskfox"
    -- color_scheme = "GruvboxDark"
    -- color_scheme = "GruvboxDarkHard"
    -- color_scheme = "Kanagawa Dragon (Gogh)"
    -- color_scheme = "nightfox"
    color_scheme = "terafox",
    -- color_scheme = "tokyonight"

    font = wezterm.font_with_fallback({
        -- "SauceCodePro Nerd Font",
        "CartographCF Nerd Font Mono",
        "Source Han Sans SC",
    }),

    font_size = 14.0,

    default_prog = { "/Users/mdvis/.local/bin/tmux" },

    enable_tab_bar = false,
}
