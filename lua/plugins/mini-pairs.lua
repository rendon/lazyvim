-- https://www.reddit.com/r/neovim/comments/14u0dt3
return {
  "echasnovski/mini.pairs",
  event = "VeryLazy",
  opts = {
    mappings = {
      ["`"] = false,
      ["\""] = false,
      ["'"] = false,
      ["("] = false,
      ["["] = false,
    },
  },
}
