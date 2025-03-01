return {
    'jakemason/ouroboros.nvim',
    config = function()
        require('ouroboros').setup({
            -- Plugin-specific options
            vim.keymap.set("n", "<leader>sf", ":Ouroboros<CR>", {})
        })
    end
}
