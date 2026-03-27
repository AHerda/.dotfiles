local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.term = "xterm-256color"
config.window_close_confirmation = "NeverPrompt"
config.skip_close_confirmation_for_processes_named = {
  'bash',
  'sh',
  'zsh',
  'fish',
  'tmux',
  'nu',
  'cmd.exe',
  'pwsh.exe',
  'powershell.exe',
}

config.window_decorations = "RESIZE"

config.initial_cols = 150
config.initial_rows = 40
config.font_size = 9

-- It should be okey but icons are bigger without
-- config.allow_square_glyphs_to_overflow_width = "Never"

-- config.front_end = "OpenGL"
-- config.webgpu_power_preference = "HighPerformance"
config.window_background_opacity = 0.8
-- config.win32_system_backdrop = "Acrylic"

config.color_scheme = "GruvboxDarkHard"
config.font = wezterm.font_with_fallback {
  'JetBrains Mono',
  'FiraCode Mono',
}
config.use_fancy_tab_bar = true

-- Keybinfings
config.keys = {
    {
        key = "t",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SpawnTab "CurrentPaneDomain",
    },
    {
      key = "|",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
    },

    -- Split pane horizontally
    {
      key = "%",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
    },

    -- Close current pane
    {
      key = "w",
      mods = "CTRL|ALT",
      action = wezterm.action.CloseCurrentPane { confirm = false },
    },
}


-- WSL Settings
config.default_domain = "WSL:FedoraLinux-42"

return config
