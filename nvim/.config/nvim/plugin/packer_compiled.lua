-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/james/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/james/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/james/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/james/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/james/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["autoclose.nvim"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/autoclose.nvim",
    url = "https://github.com/m4xshen/autoclose.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    config = { "\27LJ\2\2Õ\1\0\0\4\0\f\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\a\0005\3\6\0=\3\b\0025\3\t\0=\3\n\2=\2\v\1B\0\2\1K\0\1\0\21formatters_by_ft\vpython\1\3\0\0\nisort\nblack\blua\1\0\0\1\2\0\0\vstylua\19format_on_save\1\0\2\17lsp_fallback\2\15timeout_ms\3ô\3\1\0\1\20notify_on_error\2\nsetup\fconform\frequire\0" },
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["copilot.vim"] = {
    config = { "\27LJ\2\2€\1\0\0\2\0\6\0\r6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\5\25copilot_tab_fallback\26copilot_assume_mapped\23copilot_no_tab_map\6g\bvim\0" },
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-tool-installer.nvim"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/mason-tool-installer.nvim",
    url = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2-\0\1\3\1\2\0\5-\1\0\0009\1\0\0019\2\1\0B\1\2\1K\0\1\0\1À\tbody\15lsp_expandR\0\1\2\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\21select_next_item\fvisibleR\0\1\2\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\21select_prev_item\fvisibleí\4\1\0\t\0'\0H6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0019\2\4\0024\3\0\0B\2\2\0019\2\4\0005\3\b\0005\4\6\0003\5\5\0=\5\a\4=\4\t\0035\4\n\0=\4\v\0039\4\f\0009\4\r\0049\4\14\0045\5\16\0009\6\f\0009\6\15\0064\a\0\0B\6\2\2=\6\17\0059\6\f\0009\6\18\6B\6\1\2=\6\19\0059\6\f\0009\6\20\6)\aüÿB\6\2\2=\6\21\0059\6\f\0009\6\20\6)\a\4\0B\6\2\2=\6\22\0059\6\f\0009\6\23\0065\a\26\0009\b\24\0009\b\25\b=\b\27\aB\6\2\2=\6\28\0059\6\f\0003\a\29\0005\b\30\0B\6\3\2=\6\31\0059\6\f\0003\a \0005\b!\0B\6\3\2=\6\"\5B\4\2\2=\4\f\0034\4\4\0005\5#\0>\5\1\0045\5$\0>\5\2\0045\5%\0>\5\3\4=\4&\3B\2\2\0012\0\0€K\0\1\0\fsources\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fconfirm\n<C-d>\n<C-u>\16scroll_docs\n<C-e>\nclose\14<C-Space>\1\0\0\rcomplete\vinsert\vpreset\fmapping\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\vconfig\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  solarized = {
    config = { "\27LJ\2\2[\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\1\5\0B\0\2\1K\0\1\0\26colorscheme solarized\bcmd\tdark\15background\6o\bvim\0" },
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/solarized",
    url = "https://github.com/maxmx03/solarized.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/james/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: solarized
time([[Config for solarized]], true)
try_loadstring("\27LJ\2\2[\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0'\1\5\0B\0\2\1K\0\1\0\26colorscheme solarized\bcmd\tdark\15background\6o\bvim\0", "config", "solarized")
time([[Config for solarized]], false)
-- Config for: conform.nvim
time([[Config for conform.nvim]], true)
try_loadstring("\27LJ\2\2Õ\1\0\0\4\0\f\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\a\0005\3\6\0=\3\b\0025\3\t\0=\3\n\2=\2\v\1B\0\2\1K\0\1\0\21formatters_by_ft\vpython\1\3\0\0\nisort\nblack\blua\1\0\0\1\2\0\0\vstylua\19format_on_save\1\0\2\17lsp_fallback\2\15timeout_ms\3ô\3\1\0\1\20notify_on_error\2\nsetup\fconform\frequire\0", "config", "conform.nvim")
time([[Config for conform.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2-\0\1\3\1\2\0\5-\1\0\0009\1\0\0019\2\1\0B\1\2\1K\0\1\0\1À\tbody\15lsp_expandR\0\1\2\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\21select_next_item\fvisibleR\0\1\2\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\21select_prev_item\fvisibleí\4\1\0\t\0'\0H6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0019\2\4\0024\3\0\0B\2\2\0019\2\4\0005\3\b\0005\4\6\0003\5\5\0=\5\a\4=\4\t\0035\4\n\0=\4\v\0039\4\f\0009\4\r\0049\4\14\0045\5\16\0009\6\f\0009\6\15\0064\a\0\0B\6\2\2=\6\17\0059\6\f\0009\6\18\6B\6\1\2=\6\19\0059\6\f\0009\6\20\6)\aüÿB\6\2\2=\6\21\0059\6\f\0009\6\20\6)\a\4\0B\6\2\2=\6\22\0059\6\f\0009\6\23\0065\a\26\0009\b\24\0009\b\25\b=\b\27\aB\6\2\2=\6\28\0059\6\f\0003\a\29\0005\b\30\0B\6\3\2=\6\31\0059\6\f\0003\a \0005\b!\0B\6\3\2=\6\"\5B\4\2\2=\4\f\0034\4\4\0005\5#\0>\5\1\0045\5$\0>\5\2\0045\5%\0>\5\3\4=\4&\3B\2\2\0012\0\0€K\0\1\0\fsources\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fconfirm\n<C-d>\n<C-u>\16scroll_docs\n<C-e>\nclose\14<C-Space>\1\0\0\rcomplete\vinsert\vpreset\fmapping\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\vconfig\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: copilot.vim
time([[Config for copilot.vim]], true)
try_loadstring("\27LJ\2\2€\1\0\0\2\0\6\0\r6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\5\25copilot_tab_fallback\26copilot_assume_mapped\23copilot_no_tab_map\6g\bvim\0", "config", "copilot.vim")
time([[Config for copilot.vim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
