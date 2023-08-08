local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'pyright',
	'gopls',
	'eslint',
	'vuels',
	'rust_analyzer',
	"lua_ls"
})

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<CR>'] = cmp.mapping.confirm({ select = true }), --[[ <C-Space> also works well! ]]
  ["<C-y>"] = cmp.mapping(cmp.mapping.complete({
      reason = cmp.ContextReason.Auto,
  }), {"i", "c"}),
  ["<C-d>"] = cmp.mapping.scroll_docs(-4),
  ["<C-u>"] = cmp.mapping.scroll_docs(4),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
    },
  },
}

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  if client.name == "eslint" then
      vim.cmd.LspStop('eslint')
      return
  end

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
  vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, opts)
end)

lsp.setup()

local lspkind = require("lspkind")
cmp.setup({
    formatting = {
        format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
        })
    },
    window = {
        completion = {
            border = "rounded",
            side_padding = 0,
        }
    }

})


