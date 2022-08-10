local colors = require("base16").get()
local fg = require("base16").fg
local bg = require("base16").bg
local fg_bg = require("base16").fg_bg

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
