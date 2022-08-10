local colors = require("ui").base16_get()
local fg = require("ui").fg
local bg = require("ui").bg
local fg_bg = require("ui").fg_bg

bg("LspReferenceRead", colors.grey)
bg("LspReferenceText", colors.grey)
bg("LspReferenceWrite", colors.grey)
fg("DiagnosticHint", colors.purple)
fg("DiagnosticError", colors.red)
fg("DiagnosticWarn", colors.yellow)
fg("DiagnosticInformation", colors.green)
fg_bg("RenameBorder", colors.grey, colors.black)
fg_bg("RenameTitle", colors.black, colors.green)
fg_bg("LspSignatureActiveParameter", colors.black, colors.green)
