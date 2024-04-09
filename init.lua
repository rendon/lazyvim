-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").marksman.setup({})
require('lspconfig').pyright.setup({})
 -- globally
vim.g.autoformat = false
 -- buffer-local
vim.b.autoformat = false


-- " Enable AutoSave on Vim startup
vim.g.auto_save = 1


vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
