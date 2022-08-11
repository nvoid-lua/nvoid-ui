local M = {}
local api = vim.api

-- BufferLine
M.bufferclose = function(bufnr)
  if vim.bo.buftype == "terminal" then
    vim.cmd(vim.bo.buflisted and "set nobl | enew" or "hide")
  elseif vim.bo.modified then
    print "save the file bruh"
  else
    bufnr = bufnr or api.nvim_get_current_buf()
    require("ui").bufferlineprev()
    vim.cmd("bd" .. bufnr)
  end
end

M.bufilter = function()
  local bufs = vim.t.bufs
  for i = #bufs, 1, -1 do
    if not vim.api.nvim_buf_is_valid(bufs[i]) then
      table.remove(bufs, i)
    end
  end
  return bufs
end

M.bufferlinenext = function()
  local bufs = M.bufilter() or {}

  for i, v in ipairs(bufs) do
    if api.nvim_get_current_buf() == v then
      vim.cmd(i == #bufs and "b" .. bufs[1] or "b" .. bufs[i + 1])
      break
    end
  end
end

M.bufferlineprev = function()
  local bufs = M.bufilter() or {}

  for i, v in ipairs(bufs) do
    if api.nvim_get_current_buf() == v then
      vim.cmd(i == 1 and "b" .. bufs[#bufs] or "b" .. bufs[i - 1])
      break
    end
  end
end

-- closes tab + all of its buffers
M.closeallbufs = function(action)
  local bufs = vim.t.bufs

  if action == "closeTab" then
    vim.cmd "tabclose"
  end

  for _, buf in ipairs(bufs) do
    M.bufferclose(buf)
  end

  if action ~= "closeTab" then
    vim.cmd "enew"
  end
end

M.cmd = function()
  local new_cmd = vim.api.nvim_create_user_command
  -- Rename
  new_cmd("NvoidRename", function()
    require("ui.rename").open()
  end, {})

  -- Bufferline
  new_cmd("BufNext", function()
    require("ui").bufferlinenext()
  end, {})
  new_cmd("BufPrev", function()
    require("ui").bufferlineprev()
  end, {})
  new_cmd("BufClose", function()
    vim.cmd [[bdelete %]]
  end, {})

  new_cmd("BufPick", function()
    vim.g.bufpick_showNums = true
    vim.cmd "redrawtabline"
    vim.api.nvim_echo({ { "Enter Num ", "Question" } }, false, {})
    local key = tonumber(vim.fn.nr2char(vim.fn.getchar()))
    if key then
      vim.cmd("b" .. vim.t.bufs[key])
      vim.api.nvim_echo({ { "" } }, false, {})
      vim.cmd "redraw"
    else
      vim.cmd "redraw"
      print "bufpick cancelled, press a number key!"
    end
    vim.g.bufpick_showNums = false
    vim.cmd "redrawtabline"
  end, {})
end

function M.setup(options)
  require("ui").cmd()
  vim.opt.statusline = "%!v:lua.require'ui.statusline'.run()"
  vim.opt.tabline = "%!v:lua.require'ui.bufferline'.run()"
  require("config").setup(options)
end

return M
