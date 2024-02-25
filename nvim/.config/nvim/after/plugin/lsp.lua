local cmp = require('cmp')
local lsp = require('lsp-zero')
local lspconfig = require('lspconfig')

local function find_venv()
    local cwd = vim.fn.getcwd()
    local env_names = { 'env', 'venv' }
    for _, env_name in ipairs(env_names) do
        local env_path = cwd .. '/' .. env_name
        if vim.fn.isdirectory(env_path) == 1 then
            return env_path
        end
    end
    return nil
end

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
        'pylsp',
    },
    handlers = {
        lsp.default_setup(),
        luals = lspconfig.lua_ls.setup({}),
        pylsp = function()
            local env_path = find_venv()
            lspconfig.pylsp.setup({
                settings = {
                    pylsp = {
                        plugins = {
                            autopep8 = { enabled = false },
                            yapf = { enabled = false },
                            black = { enabled = true },
                            pylint = { enabled = true, executable = "pylint" },
                            pyflakes = { enabled = false },
                            pycodestyle = { enabled = false },
                            pylsp_mypy = { enabled = true },
                            jedi = { environment = env_path },
                            jedi_completion = { fuzzy = true },
                            isort = { enabled = true, profile = "black" },
                        }
                    }
                }
            })
        end,
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
