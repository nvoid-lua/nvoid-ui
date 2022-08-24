local M = {}

M.cmds = function()
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
  require("base16").load_theme()
  require("ui").cmds()
  vim.opt.statusline = "%!v:lua.require'ui.statusline'.run()"
  vim.opt.tabline = "%!v:lua.require'ui.bufferline'.run()"
  require("config").setup(options)
end

return M
