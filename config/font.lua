local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = 'JetBrains Mono NL'
local font_size = platform().is_mac and 12 or 9

return {
  font = wezterm.font(font),
  font_size = font_size,
}