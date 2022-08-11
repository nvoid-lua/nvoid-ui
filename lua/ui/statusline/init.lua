local S = {}

local StyleD = require("config").statusline.style
local StyleN = require("nvoid.core.utils").load_config().ui.statusline.style
local Style = StyleN or StyleD

local configD = require("config").statusline.enable
local configN = require("nvoid.core.utils").load_config().ui.statusline.enable
local config = configN or configD

local M = require "ui.statusline.modules"

S.run = function()
  if config then
    if Style == "nvoid" then
      return table.concat {
        M.modeN(),
        M.fileInfo(),
        M.git(),

        "%=",
        M.lsp_progress(),
        "%=",

        M.diagnostics(),
        M.lsp(),
        M.scrollbar(),
      }
    elseif Style == "minimal" then
      return table.concat {
        M.modeM(),
        M.git(),
        " ",
        M.diagnostics(),

        "%=",
        M.lsp_progress(),
        "%=",

        M.fileInfo(),
        M.scrollbar(),
      }
    elseif Style == "evil" then
      return table.concat {
        M.modeE(),
        M.fileInfo(),
        M.git(),

        "%=",
        M.lsp_progress(),
        "%=",

        M.diagnostics(),
        M.lsp(),
        M.scrollbar(),
      }
    end
  else
    vim.opt.laststatus = 0
  end
end

return S
