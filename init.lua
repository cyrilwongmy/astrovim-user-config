return {
  mappings = {
    n = {
      ["J"] = { "5j", desc = "jump to next 5 lines" },
      ["K"] = { "5k", desc = "jump to prev 5 lines" }
    },
  },
  lsp = {
    mappings = {
      n = {
        -- disable original hover shortcut
        ["K"] = false,
        -- show hover symbol details
        ["<leader>lk"] = vim.lsp.buf.hover,
      }
    },
    ["server-settings"] = {
      clangd = {
        capabilities = { offsetEncoding = "utf-8" },
      },
    },
  },
  ["mason-nvim-dap"] = {
    setup_handlers = {
      cppdbg = function(source_name)
        local dap = require("dap")
        dap.adapters.cppdbg = {
          id = 'cppdbg',
          type = 'executable',
          command = 'OpenDebugAD7',
        }

        dap.configurations.cpp = {
          {
            name = 'Launch file',
            type = 'cppdbg',
            request = 'launch',
            program = function()
              return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            cwd = '${workspaceFolder}',
            stopAtEntry = true,
          },
        }
      end
    }
  }
}
