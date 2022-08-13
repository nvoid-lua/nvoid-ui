local M = {}
local g = vim.g
local config = require("nvoid.core.utils").load_config()

M.get_theme_tb = function(type)
  local default_path = "base16.themes." .. g.theme
  local user_path = "custom.themes." .. g.theme

  local present1, default_theme = pcall(require, default_path)
  local present2, user_theme = pcall(require, user_path)

  if present1 then
    return default_theme[type]
  elseif present2 then
    return user_theme[type]
  else
    error("No such theme bruh >_< ")
  end
end

M.merge_tb = function(table1, table2)
  return vim.tbl_deep_extend("force", table1, table2)
end

--  credits to https://github.com/max397574 for this function
M.clear_highlights = function(hl_group)
  local highlights_raw = vim.split(vim.api.nvim_exec("filter " .. hl_group .. " hi", true), "\n")
  local highlight_groups = {}

  for _, raw_hi in ipairs(highlights_raw) do
    table.insert(highlight_groups, string.match(raw_hi, hl_group .. "%a+"))
  end

  for _, highlight in ipairs(highlight_groups) do
    vim.cmd([[hi clear ]] .. highlight)
  end
end

M.load_all_highlights = function()
  -- reload highlights for theme switcher
  local reload = require("plenary.reload").reload_module
  local clear_hl = require("base16").clear_highlights

  clear_hl("BufferLine")
  clear_hl("TS")

  reload("base16.integrations")
  reload("base16.hl")

  local hl_groups = require("base16.hl")

  for hl, col in pairs(hl_groups) do
    vim.api.nvim_set_hl(0, hl, col)
  end
end

M.load_highlight = function(group)
  local default_hl = require("base16.integrations." .. group)
  local user_hl = config.ui.hl_override

  if vim.g.transparency then
    user_hl = M.merge_tb(user_hl, require("base16.glassy"))
  end

  for key, value in pairs(user_hl) do
    if default_hl[key] then
      default_hl[key] = value
    end
  end

  for hl, col in pairs(default_hl) do
    vim.api.nvim_set_hl(0, hl, col)
  end
end

M.load_theme = function()
  M.load_highlight("defaults")
  M.load_highlight("statusline")
end

M.override_theme = function(default_theme, theme_name)
  local changed_themes = config.ui.changed_themes

  if changed_themes[theme_name] then
    return M.merge_tb(default_theme, changed_themes[theme_name])
  else
    return default_theme
  end
end

M.toggle_transparency = function()
  local transparency_status = config.ui.transparency
  local write_data = require("nvchad").write_data

  local function save_chadrc_data()
    local old_data = "transparency = " .. tostring(transparency_status)
    local new_data = "transparency = " .. tostring(g.transparency)

    write_data(old_data, new_data)
  end

  if g.transparency then
    g.transparency = false

    M.load_all_highlights()
    save_chadrc_data()
  else
    g.transparency = true

    M.load_all_highlights()
    save_chadrc_data()
  end
end

return M
