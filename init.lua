-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").marksman.setup({})
vim.g.autoformat = false -- globally
vim.b.autoformat = false -- buffer-local
