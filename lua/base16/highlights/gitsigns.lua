local colors = require("ui").base16_get()
local fg_bg = require("ui").fg_bg
local fg = require("ui").fg

fg_bg("DiffAdd", "NONE", colors.blue)
fg_bg("DiffDelete", "NONE", colors.red)
fg_bg("DiffChange", "NONE", colors.light_grey)
fg_bg("DiffAdded", "NONE", colors.blue)
fg_bg("DiffRemoved", "NONE", colors.green)
fg_bg("DiffChangeDelete", "NONE", colors.red)
fg_bg("DiffModified", "NONE", colors.orange)
fg_bg("DiffText", "NONE", colors.blue)
fg("DiffFile", colors.cyan)
fg("DiffIndexLine", colors.grey)
fg("GitSignsAdd", colors.blue)
fg("GitSignsChange", colors.light_grey)
fg("GitSignsDelete", colors.red)
fg("SignAdd", colors.blue)
fg("SignChange", colors.light_grey)
fg("SignDelete", colors.red)
