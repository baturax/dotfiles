local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- shell
config.default_prog = { "fish" }

-- keys
config.keys = {
  {
    key = "F1",
    action = wezterm.action.ActivateTab(0)
  },
  {
    key = "F2",
    action = wezterm.action.ActivateTab(1)
  },
  {
    key = "F3",
    action = wezterm.action.ActivateTab(2)
  },
  {
    key = "F4",
    action = wezterm.action.ActivateTab(3)
  },
  {
    key = 'Backspace',
    mods = 'CTRL',
    action = wezterm.action.SendKey { key = 'w', mods = 'CTRL' }
  },
}

-- color
config.color_scheme = "Abernathy"

-- cursor
config.default_cursor_style = "BlinkingBar"

-- fonts
config.font = wezterm.font("Monaspace Radon NF")
config.font_size = 13
config.freetype_load_target = "Normal"

-- padding
config.window_padding = {
  left = 20,
  bottom = 20,
  right = 20,
  top = 20
}

-- disable padding in neovim
local function update_padding(window, pane)
  local overrides = window:get_config_overrides() or {}
  local process = pane:get_foreground_process_name()

  if process and process:match('n?vim') then
    overrides.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
  else
    overrides.window_padding = nil
  end

  window:set_config_overrides(overrides)
end

wezterm.on('update-right-status', function(window, pane)
  update_padding(window, pane)
end)


return config
