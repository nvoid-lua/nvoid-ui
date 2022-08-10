local colors = require("base16").get()
local fg = require("base16").fg
local bg = require("base16").bg
local fg_bg = require("base16").fg_bg

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
