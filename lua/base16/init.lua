local M = {}
local cmd = vim.cmd

M.init = function(theme)
  if not theme then
    theme = require("nvoid.core.utils").load_config().ui.theme
  end
  vim.g.theme = require("nvoid.core.utils").load_config().ui.theme
  local present, base16 = pcall(require, "base16.base16")
  if present then
    base16(base16.themes(theme), true)
    package.loaded["base16.highlights.init" or false] = nil
    require "base16.highlights.init"
  end
end

M.get = function()
  local theme = require("nvoid.core.utils").load_config().ui.theme
  return require("base16.themes." .. theme).colors
end

M.bg = function(group, col)
  cmd("hi " .. group .. " guibg=" .. col)
end

M.fg = function(group, col)
  cmd("hi " .. group .. " guifg=" .. col)
end

M.fg_bg = function(group, fgcol, bgcol)
  cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

M.bg_fg = function(group, bgcol, fgcol)
  cmd("hi " .. group .. " guibg=" .. bgcol .. " guifg=" .. fgcol)
end

return M
