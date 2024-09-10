require("plugins")
require("keymaps")

vim.cmd("language en_US")
vim.cmd("colorscheme cyberdream")
vim.cmd("set number")
vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.opt.termguicolors = true

require('mason').setup()

local mason_lspconfig = require('mason-lspconfig')
mason_lspconfig.setup {
    ensure_installed = { "rust_analyzer", "asm-lsp" },
    automatic_installation = true,
}

local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.rust_analyzer.setup{}

local cmp = require('cmp')

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"rust", "asm"},
  highlight = {
    enable = true,
  },
}

cmp.setup({
  snippet = {
    expand = function(args)
    end,
  },
    mapping = {
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),

    ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<BS>'] = cmp.mapping.abort(), -- Abort the completion window
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }),
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' },
  }, {
    { name = 'cmdline' }
  })
})

cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})
vim.cmd("colorscheme cyberdream")
vim.cmd("set number")
vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.opt.termguicolors = true

require('mason').setup()

local mason_lspconfig = require('mason-lspconfig')
mason_lspconfig.setup {
    ensure_installed = { "rust_analyzer", "asm-lsp" },
    automatic_installation = true,
}

local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.rust_analyzer.setup{}

local cmp = require('cmp')

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"rust", "asm"},
  highlight = {
    enable = true,
  },
}

cmp.setup({
  snippet = {
    expand = function(args)
    end,
  },
    mapping = {
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),

    ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<BS>'] = cmp.mapping.abort(), -- Abort the completion window
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }),
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' },
  }, {
    { name = 'cmdline' }
  })
})

cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})
