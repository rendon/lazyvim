return {
  "hrsh7th/nvim-cmp",
  version = false, -- last release is way too old
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },

  -- https://github.com/hrsh7th/nvim-cmp/issues/715#issuecomment-1806944224
  -- https://github.com/LazyVim/LazyVim/discussions/2466
  opts = function(_, opts)
      opts.completion = {
        autocomplete = false,
        completeopt = "menu,menuone,noinsert",
      }
  end
}
