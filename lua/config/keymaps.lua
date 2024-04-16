-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n", "<C-Q>", ":q<cr>",
  { remap = true, desc = "Quit the current window" }
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
  "n", "<C-P>", "<leader><leader>",
  { remap = true, desc = "Find files" }
)


vim.keymap.set(
  "n", "<leader>j", "o<esc>k",
  { remap = true, desc = "Add empty line below current position" }
)

vim.keymap.set(
  "i", "<C-K>", "<esc>vbUea",
  { remap = true, desc = "Convert last word to caps" }
)


vim.keymap.set(
  "n", "<leader>a", ":NvimCmpToggle<CR>",
  { remap = true, desc = "Toggle auto completion" }
)

-- Launch panel if nothing is typed after <leader>z
vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used functions
vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")

-- Call insert link automatically when we start typing a link
vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
