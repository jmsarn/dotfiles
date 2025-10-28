return {
    "saghen/blink.cmp",
    event = "VimEnter",
    dependencies = {
        {
            "L3MON4D3/LuaSnip",
            version = "2.*",
            build = (function()
                -- Build Step is needed for regex support in snippets.
                -- This step is not supported in many windows environments.
                -- Remove the below condition to re-enable on windows.
                if vim.fn.has "win32" == 1 or vim.fn.executable "make" == 0 then
                    return
                end
                return "make install_jsregexp"
            end)(),
            dependencies = {
                {
                    "rafamadriz/friendly-snippets",
                    config = function()
                        require("luasnip.loaders.from_vscode").lazy_load()
                    end,
                },
            },
            opts = {},
        },
        "folke/lazydev.nvim",
        {
            "giuxtaposition/blink-cmp-copilot",
        },
        -- {
        --     "saghen/blink.compat",
        --     version = '2.*',
        --     lazy = true,
        --     opts = {
        --         impersonate_nvim_cmp = true,
        --     },
        -- },
        -- {
        --     "supermaven-inc/supermaven-nvim",
        --     opts = {
        --         disable_inline_completion = true, -- disable inline completion for use with cmp
        --         disable_keymaps = true,           -- disable built-in keymaps
        --         keymaps = {
        --             accept_suggestion = "<C-y>",
        --             clear_suggestion = "<C-]>",
        --             accept_word = "<C-j>",
        --         }
        --     },
        -- },
    },
    version = "1.*",
    opts = {
        keymap = {
            preset = "default"
        },
        appearance = {
            nerd_font_variant = "mono",
            kind_icons = {
                Copilot = "",
                Text = '󰉿',
                Method = '󰊕',
                Function = '󰊕',
                Constructor = '󰒓',

                Field = '󰜢',
                Variable = '󰆦',
                Property = '󰖷',

                Class = '󱡠',
                Interface = '󱡠',
                Struct = '󱡠',
                Module = '󰅩',

                Unit = '󰪚',
                Value = '󰦨',
                Enum = '󰦨',
                EnumMember = '󰦨',

                Keyword = '󰻾',
                Constant = '󰏿',

                Snippet = '󱄽',
                Color = '󰏘',
                File = '󰈔',
                Reference = '󰬲',
                Folder = '󰉋',
                Event = '󱐋',
                Operator = '󰪚',
                TypeParameter = '󰬛',
            },
        },
        completion = {
            documentation = { auto_show = false, auto_show_delay_ms = 500 },
        },
        sources = {
            -- default = { "lsp", "path", "supermaven", "snippets", "lazydev" },
            default = { "lsp", "path", "snippets", "buffer", "copilot", "lazydev" },
            providers = {
                copilot = {
                    name = "copilot",
                    module = "blink-cmp-copilot",
                    score_offset = 100,
                    async = true,
                    transform_items = function(_, items)
                        local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
                        local kind_idx = #CompletionItemKind + 1
                        CompletionItemKind[kind_idx] = "Copilot"
                        for _, item in ipairs(items) do
                            item.kind = kind_idx
                        end
                        return items
                    end,
                },
                lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
                -- supermaven = {
                --     name = "supermaven",
                --     module = "blink.compat.source",
                --     async = true,
                -- }
            }
        },
        snippets = { preset = "luasnip" },
        fuzzy = { implementation = "prefer_rust_with_warning" },
        signature = { enabled = true },
    }
}
