local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Colorscheme
    { 
        "rebelot/kanagawa.nvim", 
        lazy = false,
        name = "kanagawa",
        priority = 1000, 
        opts = {
            transparent = true,
        },
    },

    { 
        "ellisonleao/gruvbox.nvim", 
        lazy = false,
        name = "gruvbox",
        priority = 1000, 
        opts = {
            transparent_mode = true,
        },
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })()
        end,
    },

    -- Telescope
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.6",
        dependencies = {"nvim-lua/plenary.nvim"}
    },

    -- Oil
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
})
