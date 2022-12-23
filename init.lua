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
}
