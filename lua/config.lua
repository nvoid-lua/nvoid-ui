local M = {}

local defaults = {
  statusline = {
    enable = true,
    style = "nvoid",
  },
  bufferline = true
}

M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

M.setup()

return M
