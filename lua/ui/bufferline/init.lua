local config = require("config").options.bufferline
return {
  run = function()
    if config then
      local M = require "ui.bufferline.modules"
      return M.CoverNvimTree() .. M.bufferlist() .. (M.tablist() or "") .. M.buttons()
    else
      vim.opt.showtabline = 0
    end
  end,
}
