local wezterm = require("wezterm")
local act = wezterm.action

return {
    adjust_window_size_when_changing_font_size = false,
    audible_bell="Disabled",
    color_scheme = "Dracula+",
    color_schemes = {
        ["Dracula+"] = {
            background = "#1d1f21",
        }
    },
    disable_default_key_bindings = true,
    enable_tab_bar = false,
    font = wezterm.font({family="JetBrainsMono Nerd Font"}),
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
        { key = "q", mods = "SUPER", action = wezterm.action({ CloseCurrentTab = { confirm=true } }) },
        { key = "Backspace", mods = "SUPER", action = wezterm.action({SendString = "\x15" }) },
        { key = "c", mods = "SUPER | CTRL", action = "ActivateCopyMode" },
    },
    key_tables = {
      copy_mode = {
        { key ="c",      mods = "CTRL", action = act.CopyMode("Close") },
        { key ="q",      mods = "NONE", action = act.CopyMode("Close") },
        { key ="Escape", mods = "NONE", action = act.CopyMode("Close") },

        { key ="y", mods = "NONE", action = wezterm.action({ CopyTo = "Clipboard"}) },

        { key ="h", mods = "NONE", action = act.CopyMode("MoveLeft") },
        { key ="j", mods = "NONE", action = act.CopyMode("MoveDown") },
        { key ="k", mods = "NONE", action = act.CopyMode("MoveUp") },
        { key ="l", mods = "NONE", action = act.CopyMode("MoveRight") },

        { key ="LeftArrow",  mods = "NONE", action = act.CopyMode("MoveLeft") },
        { key ="DownArrow",  mods = "NONE", action = act.CopyMode("MoveDown") },
        { key ="UpArrow",    mods = "NONE", action = act.CopyMode("MoveUp") },
        { key ="RightArrow", mods = "NONE", action = act.CopyMode("MoveRight") },

        { key ="w", mods = "NONE", action = act.CopyMode("MoveForwardWord") },
        { key ="b", mods = "NONE", action = act.CopyMode("MoveBackwardWord") },

        { key ="0",     mods = "NONE",  action = act.CopyMode("MoveToStartOfLine") },
        { key ="Enter", mods = "NONE",  action = act.CopyMode("MoveToStartOfNextLine") },

        { key ="$",     mods = "NONE",  action = act.CopyMode("MoveToEndOfLineContent") },
        { key ="$",     mods = "SHIFT", action = act.CopyMode("MoveToEndOfLineContent") },
        { key ="^",     mods = "NONE",  action = act.CopyMode("MoveToStartOfLineContent") },
        { key ="^",     mods = "SHIFT", action = act.CopyMode("MoveToStartOfLineContent") },

        { key ="v", mods = "NONE",  action = act.CopyMode{SetSelectionMode="Cell"}},
        { key ="V", mods = "NONE",  action = act.CopyMode{SetSelectionMode="Line"}},
        { key ="V", mods = "SHIFT", action = act.CopyMode{SetSelectionMode="Line"}},
        { key ="v", mods = "CTRL",  action = act.CopyMode{SetSelectionMode="Block"}},

        { key ="G", mods = "NONE",  action = act.CopyMode("MoveToScrollbackBottom") },
        { key ="G", mods = "SHIFT", action = act.CopyMode("MoveToScrollbackBottom") },
        { key ="g", mods = "NONE",  action = act.CopyMode("MoveToScrollbackTop") },

        { key ="H", mods = "NONE",  action = act.CopyMode("MoveToViewportTop") },
        { key ="H", mods = "SHIFT", action = act.CopyMode("MoveToViewportTop") },
        { key ="M", mods = "NONE",  action = act.CopyMode("MoveToViewportMiddle") },
        { key ="M", mods = "SHIFT", action = act.CopyMode("MoveToViewportMiddle") },
        { key ="L", mods = "NONE",  action = act.CopyMode("MoveToViewportBottom") },
        { key ="L", mods = "SHIFT", action = act.CopyMode("MoveToViewportBottom") },

        { key ="o", mods = "NONE",  action = act.CopyMode("MoveToSelectionOtherEnd") },
        { key ="O", mods = "NONE",  action = act.CopyMode("MoveToSelectionOtherEndHoriz") },
        { key ="O", mods = "SHIFT", action = act.CopyMode("MoveToSelectionOtherEndHoriz") },

        { key ="b", mods = "CTRL", action = act.CopyMode("PageUp") },
        { key ="f", mods = "CTRL", action = act.CopyMode("PageDown") },
      },
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
