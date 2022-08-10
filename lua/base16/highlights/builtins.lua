local colors = require("ui").get()
local fg = require("ui").fg
local bg = require("ui").bg
local fg_bg = require("ui").fg_bg
local ui = require("nvoid.core.utils").load_config().ui

if ui.transparency then
  bg("Normal", "NONE")
  bg("Folded", "NONE")
  fg("Folded", "NONE")
  fg("Comment", colors.grey)
  bg("NormalFloat", "NONE")
  bg("NvimTreeNormal", "NONE")
  bg("NvimTreeNormalNC", "NONE")
  bg("NvimTreeStatusLineNC", "NONE")
  bg("NvimTreeVertSplit", "NONE")
  fg("NvimTreeVertSplit", colors.grey)
  bg("TelescopeBorder", "NONE")
  bg("TelescopePrompt", "NONE")
  bg("TelescopeResults", "NONE")
  bg("TelescopePromptBorder", "NONE")
  bg("TelescopePromptNormal", "NONE")
  bg("TelescopeNormal", "NONE")
  bg("TelescopePromptPrefix", "NONE")
  fg("TelescopeBorder", colors.one_bg)
  fg_bg("TelescopeResultsTitle", colors.black, colors.blue)
end

fg("cursorlinenr", colors.white)
fg("EndOfBuffer", colors.black)
fg("FloatBorder", colors.blue)
bg("NormalFloat", colors.darker_black)
fg("StatusLineNC", colors.one_bg3 .. " gui=underline")
fg("LineNr", colors.grey)
fg("NvimInternalError", colors.red)
fg("VertSplit", colors.one_bg2)
fg_bg("CheatsheetBorder", colors.black, colors.black)
bg("CheatsheetSectionContent", colors.black)
fg("CheatsheetHeading", colors.white)

local section_title_colors = {
  colors.white,
  colors.blue,
  colors.red,
  colors.green,
  colors.yellow,
  colors.purple,
  colors.orange,
}
for i, color in ipairs(section_title_colors) do
  vim.cmd("highlight CheatsheetTitle" .. i .. " guibg = " .. color .. " guifg=" .. colors.black)
end
