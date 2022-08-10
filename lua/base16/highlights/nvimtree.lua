local colors = require("ui").get()
local fg = require("ui").fg
local bg = require("ui").bg
local fg_bg = require("ui").fg_bg

fg("NvimTreeEmptyFolderName", colors.folder_bg)
fg("NvimTreeEndOfBuffer", colors.darker_black)
fg("NvimTreeFolderIcon", colors.folder_bg)
fg("NvimTreeFolderName", colors.folder_bg)
fg("NvimTreeGitDirty", colors.red)
fg("NvimTreeGitStaged",colors.blue)
fg("NvimTreeGitNew", colors.yellow)
fg("NvimTreeGitDeleted", colors.red)
fg("NvimTreeGitMerge", colors.light_grey)
fg("NvimTreeGitRenamed", colors.light_grey)
fg("NvimTreeIndentMarker", colors.one_bg2)
bg("NvimTreeNormal", colors.darker_black)
bg("NvimTreeNormalNC", colors.darker_black)
fg("NvimTreeOpenedFolderName", colors.folder_bg)
fg("NvimTreeRootFolder", colors.red)
fg_bg("NvimTreeStatuslineNc", colors.darker_black, colors.darker_black)
fg("NvimTreeVertSplit", colors.darker_black)
bg("NvimTreeVertSplit", colors.darker_black)
fg_bg("NvimTreeWindowPicker", colors.red, colors.black2)
