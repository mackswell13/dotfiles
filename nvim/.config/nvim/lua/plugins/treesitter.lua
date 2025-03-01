return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "ruby", "php", "blade" },  -- Make sure Ruby parser is installed
      auto_install = true,             -- Automatically install missing parsers
      highlight = { enable = true },   -- Enable highlighting
      indent = { enable = false },      -- Enable indentation support for Ruby
    })
  end,
}

