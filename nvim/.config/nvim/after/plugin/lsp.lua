local cmp = require('cmp')
local lsp = require('lsp-zero')
local lspconfig = require('lspconfig')

lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat()
end)

cmp.setup({
    mapping = {
        ['<C-Space>'] = cmp.mapping.complete({}),
        ['<C-e>'] = cmp.mapping.close(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
        }),

        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { "i", "s" }),
    }
})
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'pyright',
    },
    handlers = {
        lsp.default_setup(),
        dockerls = lspconfig.dockerls.setup({}),
        gopls = lspconfig.gopls.setup({}),
        luals = lspconfig.lua_ls.setup(
            {
                diagnostic = { enable = true, globals = { 'vim' } }
            }
        ),
        pyright = lspconfig.pyright.setup({}),
        jsonls = function()
            lspconfig.jsonls.setup({
                settings = {
                    json = {
                        schemas = require('schemastore').json.schemas(),
                        validate = { enable = true },
                    },
                },
            })
        end,
        yamlls = function()
            lspconfig.yamlls.setup({
                settings = {
                    yaml = {
                        schemaStore = {
                            enable = false,
                            url = ""
                        },
                        schemas = require('schemastore').yaml.schemas(),
                    },
                },
            })
        end,
    },
})
