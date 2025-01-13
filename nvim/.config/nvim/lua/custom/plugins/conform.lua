return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
        notify_on_error = false,
        format_on_save = {
            timeout_ms = 1000,
            lsp_fallback = true,
        },
        formatters_by_ft = {
            go = { "goimports", "gofmt" },
            html = { "djlint" },
            javascript = { "prettier" },
            json = { "prettier" },
            lua = { "stylelua" },
            python = { "ruff_organize_imports", "ruff_format" },
            typescript = { "prettier" },
            yaml = { "prettier" },
        },
    },
}
