-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n", "<c-q>", ":q!<cr>",
  { remap = true, desc = "Quit the current window" }
)
vim.keymap.set(
  "n", "<c-x>", "<leader>bd",
  { remap = true, desc = "Close current buffer" }
)

vim.keymap.set(
  "n", "<leader>y", "gg^VGy<c-o>",
  { remap = true, desc = "Copy buffer's content" }
)

vim.keymap.set(
  "n", "<leader>r", "gg^VGp",
  { remap = true, desc = "Replace buffer's content" }
)

vim.keymap.set(
  "n", "<c-p>", "<leader><leader>",
  { remap = true, desc = "Find files" }
)

vim.keymap.set(
  "n", "<leader>d", ":GoDecls<cr>",
  { remap = true, desc = "Show all function and type declarations" }
)

vim.keymap.set(
  "n", "<leader>j", "o<esc>Dk",
  { remap = true, desc = "Add empty line below current position" }
)

vim.keymap.set(
  "n", '<leader>"', 'yi"',
  { remap = true, desc = "Copy text in double quotes" }
)

vim.keymap.set(
  "n", "<leader>'", "yi'",
  { remap = true, desc = "Copy text in single quotes" }
)

vim.keymap.set(
  "i", "<c-k>", "<esc>vbUea",
  { remap = true, desc = "Convert last word to caps" }
)

vim.keymap.set(
  "i", "<c-c>", "```<cr>```<c-o>O",
  { remap = true, desc = "Insert Markdown code block" }
)

vim.keymap.set(
  "n", "<leader>a", ":NvimCmpToggle<cr>",
  { remap = true, desc = "Toggle auto completion" }
)

-- Launch panel if nothing is typed after <leader>z
vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<cr>")

-- Most used functions
vim.keymap.set("n", "<leader>nn", "<cmd>Telekasten new_note<cr>")
vim.keymap.set("n", "<leader>nf", "<cmd>Telekasten search_notes<cr>")

vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<cr>")
vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<cr>")
vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<cr>")
vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<cr>")
vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<cr>")
