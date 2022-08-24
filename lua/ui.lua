local M = {}

function M.setup(options)
  require("base16").load_theme()
  require("cmd")
  vim.opt.statusline = "%!v:lua.require'ui.statusline'.run()"
  vim.opt.tabline = "%!v:lua.require'ui.bufferline'.run()"
  require("config").setup(options)
end

return M
