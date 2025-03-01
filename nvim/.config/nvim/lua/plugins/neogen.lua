return {
    "danymat/neogen",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        enabled = true,
        languages = {
            javascript = {
                template = {
                    annotation_convention = "jsdoc"
                }
            },
            typescript = {
                template = {
                    annotation_convention = "tsdoc"
                }
            }
        }
    },
    keys = {
        { "<leader>ng", function() require("neogen").generate() end, desc = "Neogen Comment" },
        { "<leader>nf", function() require("neogen").generate({ type = "func" }) end, desc = "Neogen Function Comment" },
        { "<leader>nc", function() require("neogen").generate({ type = "class" }) end, desc = "Neogen Class Comment" },
        { "<leader>nt", function() require("neogen").generate({ type = "type" }) end, desc = "Neogen Type Comment" },
    },
}
