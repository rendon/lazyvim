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
