local wezterm = require("wezterm")

return {
    adjust_window_size_when_changing_font_size = false,
    color_scheme = "Dracula+",
    disable_default_key_bindings = true,
    enable_tab_bar = false,
    font = wezterm.font({family="JetBrains Mono"}),
    font_size = 12.0,
    hide_tab_bar_if_only_one_tab = true,
    keys = {
        { key = "c", mods = "SUPER", action = wezterm.action({ CopyTo = "Clipboard" }) },
        { key = "v", mods = "SUPER", action = wezterm.action({ PasteFrom = "Clipboard" }) },
        { key = "m", mods = "SUPER", action = "Hide" },
        { key = "n", mods = "SUPER", action = "SpawnWindow" },
        { key = "f", mods = "SUPER | CTRL", action = "ToggleFullScreen" },
        { key = "h", mods = "SUPER", action = "HideApplication" },
        { key = "f", mods = "SUPER", action = wezterm.action({ Search = { CaseSensitiveString = "" } }) },
        { key = "x", mods = "SUPER", action = "ActivateCopyMode" },
        { key = "Backspace", mods = "SUPER", action = wezterm.action({SendString = "\x15" }) },
    },
    scrollback_lines = 100000,
    selection_word_boundary = " \t\n{}[]()\"'`,;:",
    tab_bar_at_bottom = false,
    use_dead_keys = false,
    use_ime = true,
    window_background_opacity = 0.9,
    window_decorations = "RESIZE",
    window_padding = {
        left = 2,
        right = 2,
        top = 0,
        bottom = 0,
    }
}
