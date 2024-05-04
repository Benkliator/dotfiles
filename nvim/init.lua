require("remaps")
require("set")
require("packagemanager.lazy")

-- Telescope --
local builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>of', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pf', function() 
	builtin.grep_string({ search = vim.fn.input"Grep > "})
end)
-------------

-- Oil --
local oil = require("oil")
oil.setup({
    default_file_explorer = true,
    columns = {
        "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
    },
    keymaps = {
        ['h'] = "actions.select",
        ["l"] = "actions.parent",
    }
})

vim.cmd("colorscheme kanagawa")
