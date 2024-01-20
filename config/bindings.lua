local wezterm = require('wezterm')
local platform = require('utils.platform')()
local act = wezterm.action

local mod = {}

if platform.is_mac then
  mod.SUPER = 'SUPER'
  mod.SUPER_REV = 'SUPER|CTRL'
end

local key = {
  -- misc --
  { key = 'F1', mods = 'NONE', action = 'ActivateCopyMode' },
  { key = 'F2', mods = 'NONE', action = act.ActivateCommandPalette },
  { key = 'F3', mods = 'NONE', action = act.ShowLauncher },
  { key = 'F4', mods = 'NONE', action = act.ShowTabNavigator },
  { key = 'F12', mods = 'NONE', action = act.ShowDebugOverlay },
  { key = 'f', mods = mod.SUPER, action = act.Search({ CaseInSensitiveString = '' }) },

  -- copy --
  { key = 'c', mods = mod.SUPER, action = act.CopyTo('Clipboard') },
  { key = 'v', mods = mod.SUPER, action = act.PasteFrom('Clipboard') },

  -- tabs --
  -- tabs: [spawn & close] --
  { key = 't', mods = mod.SUPER, action = act.SpawnTab('DefaultDomain') },
  { key = 'w', mods = mod.SUPER_REV, action = act.CloseCurrentTab({ confirm = false }) },

  -- tabs: [navigation] --
  { key = '[', mods = mod.SUPER, action = act.ActivateTabRelative(-1) },
  { key = ']', mods = mod.SUPER, action = act.ActivateTabRelative(1) },
  { key = '[', mods = mod.SUPER_REV, action = act.MoveTabRelative(-1) },
  { key = ']', mods = mod.SUPER_REV, action = act.MoveTabRelative(1) },

  -- window --
  -- window: [spawn window] --
  { key = 'n', mods = mod.SUPER, action = act.SpawnWindow },

  -- panes --
  -- panes: [split panes] --
  { key = [[\]], mods = mod.SUPER, action = act.SplitVertical({ domain = 'CurrentPaneDomain'}), },
  { key = [[\]], mods = mod.SUPER_REV, action = act.SplitHorizontal({ domain = 'CurrentPaneDomain'}), },

  -- panes: [zoom & close pane] --
  { key = 'z', mods = mod.SUPER_REV, action = act.TogglePaneZoomState },
  { key = 'w', mods = mod.SUPER, action = act.CloseCurrentPane({ confirm = false }) },

  -- panes: [navigation] --
  { key = 'k', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Up') },
  { key = 'j', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Down') },
  { key = 'h', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Left') },
  { key = 'l', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Right') },
}

return {
  disable_default_key_bindings = true,
  keys = key,
  key_tables = key_tables,
}