return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
        notify_on_error = false,
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
        formatters_by_ft = {
            go = { "goimports", "gofmt" },
            html = { "djlint" },
            javascript = { "prettier" },
            json = { "prettier" },
            lua = { "stylelua" },
            python = { "isort", "black" },
            typescript = { "prettier" },
        },
        formatters = {
            isort = {
                prepend_args = { "--profile", "black" },
            },
        }
    },
}
