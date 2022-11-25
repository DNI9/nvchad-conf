local M = {}

M.ui = {
  theme_toggle = { "tokyonight", "catppuccin" },
  theme = "catppuccin",
  -- transparency = true,
  hl_override = {
    AlphaHeader = { fg = "blue" },
  },
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
