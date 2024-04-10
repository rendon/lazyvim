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

-- Toggle LSP diagnostics
-- See https://www.reddit.com/r/neovim/comments/uri2p4/here_is_a_quick_code_snippet_to_toggle_lsp/
local diagnostics_active = true
local toggle_diagnostics = function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.show()
  else
    vim.diagnostic.hide()
  end
end

vim.keymap.set('n', '<leader>td', toggle_diagnostics)
