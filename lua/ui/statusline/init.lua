local S = {}

local style = require("config").options.statusline.style

local M = require "ui.statusline.modules"

S.run = function()
  if style == "nvoid" then
    return table.concat {
      M.modeN(),
      M.fileInfo(),
      M.git(),

      "%=",
      M.lsp_progress(),
      "%=",

      M.treesitter_status(),
      M.diagnostics(),
      M.lsp(),
      M.scrollbar(),
    }
  elseif style == "minimal" then
    return table.concat {
      M.modeM(),
      M.git(),
      " ",
      M.diagnostics(),

      "%=",
      M.lsp_progress(),
      "%=",

      M.treesitter_status(),
      M.fileInfo(),
      M.scrollbar(),
    }
  elseif style == "evil" then
    return table.concat {
      M.modeE(),
      M.fileInfo(),
      M.git(),

      "%=",
      M.lsp_progress(),
      "%=",

      M.treesitter_status(),
      M.diagnostics(),
      M.lsp(),
      M.scrollbar(),
    }
  end
end

return S
