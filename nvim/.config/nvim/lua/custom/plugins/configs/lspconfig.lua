local M = {}

M.setup_lsp = function(attach, capabilities)
  local lspconfig = require'lspconfig'
  
  
  local servers = {
    "pyright",
    "tsserver",
    "tailwindcss",
    "html",
    "cssls",
    "graphql",
    "rust_analyzer"
  }

  for _,lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = attach,
      capabilities = capabilities
    }
  end

  lspconfig.csharp_ls.setup{}

end


return M
