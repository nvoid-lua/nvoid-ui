local M = {}

local defaults = {
  transparency = false,
  statusline = {
    style = "nvoid",
  },
}

M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

M.setup()

return M
