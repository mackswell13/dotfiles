--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
-- thicc boy cursor
-- Set the cursor style
vim.opt.guicursor = ""


vim.g.mapleader = " "
--line number
vim.opt.number = true
vim.opt.relativenumber = true
--tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.smartindent = true
vim.opt.swapfile = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.api.nvim_create_autocmd("FileType", {
    pattern = "javascript",
    callback = function()
        vim.opt_local.colorcolumn = "100"
    end,
})

-- Override for TypeScript files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescript",
  callback = function()
    vim.opt_local.colorcolumn = "100"
  end,
})

-- Override for Ruby files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "ruby",
    callback = function()
        vim.opt_local.colorcolumn = "120"
    end,
})

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

-- Thicc boy cursor


-- Jai Syntax
vim.api.nvim_create_augroup('jaiFileType', { clear = true })

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
    pattern = '*.jai',         -- Match files with the .jai extension
    command = 'setfiletype jai', -- Set the filetype to 'jai'
})

vim.keymap.set("n", "<leader>?", vim.diagnostic.open_float, { desc = "Open diagnostic floating window" })
