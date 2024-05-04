-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require('telekasten').setup({
    -- Put the name of your notes directory here
    home = vim.fn.expand("~/projects/notes/"),
    -- Put the name of your notes directory here
    template_new_note = vim.fn.expand("~/projects/notes/.new-note-template"),
    -- Replace spaces in the file name with dashes
    filename_space_subst = '-',
})

require("lspconfig").marksman.setup({})
require('lspconfig').pyright.setup({})

-- Delay autocompletion
-- https://github.com/hrsh7th/nvim-cmp/issues/715#issuecomment-1806944224
local timer = nil
vim.api.nvim_create_autocmd({ "TextChangedI", "CmdlineChanged" }, {
    pattern = "*",
    callback = function()
        if timer then
            vim.loop.timer_stop(timer)
            timer = nil
        end

        timer = vim.loop.new_timer()
        timer:start(1000, 0, vim.schedule_wrap(function()
            require('cmp').complete({ reason = require('cmp').ContextReason.Auto })
        end))
    end
})


-- globally
vim.g.autoformat = false

-- " Enable AutoSave on Vim startup
vim.g.auto_save = 1

vim.wo.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Autoformatting is annoying, I'll call the formatter when I'm ready
vim.g.go_fmt_autosave = 0
vim.g.go_imports_autosave = 0


if vim.g.neovide then
    vim.o.guifont = "monospace:h18"
end
