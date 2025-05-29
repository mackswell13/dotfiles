return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    -- optional lazy-loading, remove if you want it to load immediately
    lazy = false, 
    priority = 1000, -- set high if it's your colorscheme
    config = function()
      vim.cmd("colorscheme oxocarbon")
    end,
  }
}

