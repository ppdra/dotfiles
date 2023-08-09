local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.general = {
  n = {
    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "Save file" },
    -- quit
    ["<C-q>"] = { "<cmd> bd <CR>", "Close tab" },
    ["<C-a>"] = { "<cmd> q! <CR>", "Close tab" },
    

  }
}

return M
