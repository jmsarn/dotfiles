return {

    -- {
    --     "zbirenbaum/copilot-cmp",
    --     dependencies = {
    --         "onsails/lspkind.nvim",
    --     },
    --     config = function()
    --         require("copilot_cmp").setup()
    --     end,
    -- },
    {
        "zbirenbaum/copilot.lua",
        lazy = true,
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
            })
        end,
    }
}
