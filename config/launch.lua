local platform = require('utils.platform')()

local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_mac then
  options.default_prog = { '/bin/zsh' }
  options.launch_menu = {
    { label = 'zsh', args = { 'zsh' } },
    { label = 'bash', args = { 'bash' } },
  }
elseif platform.is_linux then
  options.default_prog = { 'zsh'}
  options.launch_menu = {
    { label = 'zsh', args = { 'zsh' } },
    { label = 'bash', args = { 'bash' } },
  }
end

return options