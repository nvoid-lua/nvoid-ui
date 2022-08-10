local colors = require("ui").get()
local fg = require("ui").fg
local bg = require("ui").bg
local fg_bg = require("ui").fg_bg

fg_bg("TelescopeBorder", colors.darker_black, colors.darker_black)
fg_bg("TelescopePromptBorder", colors.black2, colors.black2)
fg_bg("TelescopePromptNormal", colors.white, colors.black2)
fg_bg("TelescopePromptPrefix", colors.red, colors.black2)
fg_bg("TelescopePreviewTitle", colors.black, colors.green)
fg_bg("TelescopePromptTitle", colors.black, colors.red)
fg_bg("TelescopeResultsTitle", colors.darker_black, colors.darker_black)
fg("TelescopeMatching", colors.yellow)
bg("TelescopeSelection", colors.black2)
bg("TelescopeNormal", colors.darker_black)
