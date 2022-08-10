local colors = require("base16").get()
local bg = require("base16").bg
local fg_bg = require("base16").fg_bg
local bg_fg = require("base16").bg_fg

bg("StatusLine", colors.statusline_bg)

-- Git
fg_bg("St_gitIcons", colors.light_grey, colors.statusline_bg)
fg_bg("St_gitAdd", colors.green, colors.statusline_bg)
fg_bg("St_gitMod", colors.yellow, colors.statusline_bg)
fg_bg("St_gitRem", colors.red, colors.statusline_bg)

-- Lsp
fg_bg("St_LspError", colors.red, colors.statusline_bg)
fg_bg("St_LspWarning", colors.yellow, colors.statusline_bg)
fg_bg("St_LspHints", colors.purple, colors.statusline_bg)
fg_bg("St_LspInfo", colors.green, colors.statusline_bg)
fg_bg("St_LspStatus", colors.white, colors.statusline_bg)
fg_bg("St_LspProgress", colors.green, colors.statusline_bg)
fg_bg("St_LspStatus_Icon", colors.black, colors.nord_blue)

-- Mode
-- Nvoid
fg_bg("St_NormalMode", colors.black, colors.nord_blue)
fg_bg("St_InsertMode", colors.black, colors.dark_purple)
fg_bg("St_TerminalMode", colors.black, colors.green)
fg_bg("St_NTerminalMode", colors.black, colors.yellow)
fg_bg("St_VisualMode", colors.black, colors.cyan)
fg_bg("St_ReplaceMode", colors.black, colors.orange)
fg_bg("St_ConfirmMode", colors.black, colors.teal)
fg_bg("St_CommandMode", colors.black, colors.green)
fg_bg("St_SelectMode", colors.black, colors.nord_blue)
-- Min
fg_bg("St_ModeM", colors.nord_blue, colors.statusline_bg)
-- evil
bg_fg("St_NormalModeE", colors.black, colors.nord_blue)
bg_fg("St_InsertModeE", colors.black, colors.dark_purple)
bg_fg("St_TerminalModeE", colors.black, colors.green)
bg_fg("St_NTerminalModeE", colors.black, colors.yellow)
bg_fg("St_VisualModeE", colors.black, colors.cyan)
bg_fg("St_ReplaceModeE", colors.black, colors.orange)
bg_fg("St_ConfirmModeE", colors.black, colors.teal)
bg_fg("St_CommandModeE", colors.black, colors.green)
bg_fg("St_SelectModeE", colors.black, colors.nord_blue)


bg_fg("St_NormalModeSep", colors.grey, colors.nord_blue)
bg_fg("St_InsertModeSep", colors.grey, colors.dark_purple)
bg_fg("St_TerminalModeSep", colors.grey, colors.green)
bg_fg("St_NTerminalModeSep", colors.grey, colors.yellow)
bg_fg("St_VisualModeSep", colors.grey, colors.cyan)
bg_fg("St_ReplaceModeSep", colors.grey, colors.orange)
bg_fg("St_ConfirmModeSep", colors.grey, colors.teal)
bg_fg("St_CommandModeSep", colors.grey, colors.green)
bg_fg("St_SelectModeSep", colors.grey, colors.nord_blue)

-- Others
fg_bg("St_EmptySpace", colors.grey, colors.lightbg)
fg_bg("St_EmptySpace2", colors.grey, colors.statusline_bg)
fg_bg("St_file_info", colors.white, colors.lightbg)
fg_bg("St_file_sep", colors.lightbg, colors.statusline_bg)
fg_bg("St_pos_text", colors.yellow, colors.statusline_bg)
