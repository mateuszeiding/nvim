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
local package_path_str = "C:\\Users\\eidin\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?.lua;C:\\Users\\eidin\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\eidin\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\eidin\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\eidin\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\lua\\5.1\\?.so"
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
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  harpoon = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\ng\0\1\5\1\5\0\n6\1\0\0'\3\1\0B\1\2\0028\1\0\0019\1\2\0015\3\3\0-\4\0\0=\4\4\3B\1\2\1K\0\1\0\2À\17capabilities\1\0\1\17capabilities\0\nsetup\14lspconfig\frequireÊ\2\0\0\t\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\3\t\0009\4\4\0009\4\5\4'\6\6\0'\a\a\0'\b\b\0B\4\4\2=\4\n\0035\4\f\0005\5\v\0=\5\2\4=\4\r\3B\1\2\0016\1\14\0009\1\15\1)\2\0\0=\2\16\0016\1\14\0009\1\15\1)\2\0\0=\2\17\1K\0\1\0\21zig_fmt_autosave\25zig_fmt_parse_errors\6g\bvim\rsettings\1\0\1\bzls\0\1\0\3\15warn_style\2\20enable_snippets\2\23enable_inlay_hints\2\rroot_dir\1\0\2\rsettings\0\rroot_dir\0\rzls.json\14build.zig\t.git\17root_pattern\tutil\nsetup\bzls\14lspconfig\frequire¸\2\0\0\b\1\16\0\0206\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\3\4\0-\4\0\0=\4\5\0035\4\r\0005\5\a\0005\6\6\0=\6\b\0055\6\n\0005\a\t\0=\a\v\6=\6\f\5=\5\14\4=\4\15\3B\1\2\1K\0\1\0\2À\rsettings\bLua\1\0\1\bLua\0\16diagnostics\fglobals\1\0\1\fglobals\0\1\a\0\0\bbit\bvim\ait\rdescribe\16before_each\15after_each\fruntime\1\0\2\fruntime\0\16diagnostics\0\1\0\1\fversion\fLua 5.1\17capabilities\1\0\2\17capabilities\0\rsettings\0\nsetup\vlua_ls\14lspconfig\frequireC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire\t\1\0\r\0:\0n6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\0016\0\0\0'\2\5\0B\0\2\0026\1\0\0'\3\6\0B\1\2\0026\2\a\0009\2\b\2'\4\t\0004\5\0\0006\6\a\0009\6\n\0069\6\v\0069\6\f\6B\6\1\0029\a\r\1B\a\1\0A\2\3\0026\3\0\0'\5\14\0B\3\2\0029\3\2\0034\5\0\0B\3\2\0016\3\0\0'\5\15\0B\3\2\0029\3\2\3B\3\1\0016\3\0\0'\5\16\0B\3\2\0029\3\2\0035\5\18\0005\6\17\0=\6\19\0055\6\22\0003\a\20\0>\a\1\0063\a\21\0=\a\23\0063\a\24\0=\a\25\6=\6\26\5B\3\2\0015\3\29\0009\4\27\0009\4\28\4=\4\30\0039\4\2\0005\6\"\0005\a \0003\b\31\0=\b!\a=\a#\0069\a$\0009\a%\a9\a&\a5\t(\0009\n$\0009\n'\n\18\f\3\0B\n\2\2=\n)\t9\n$\0009\n*\n\18\f\3\0B\n\2\2=\n+\t9\n$\0009\n,\n5\f-\0B\n\2\2=\n.\t9\n$\0009\n/\nB\n\1\2=\n0\tB\a\2\2=\a$\0069\a1\0009\a2\a4\t\3\0005\n3\0>\n\1\t5\n4\0>\n\2\t4\n\3\0005\v5\0>\v\1\nB\a\3\2=\a2\6B\4\2\0016\4\a\0009\0046\0049\0041\0045\0068\0005\a7\0=\a9\6B\4\2\0012\0\0€K\0\1\0\nfloat\1\0\1\nfloat\0\1\0\6\vborder\frounded\vprefix\5\nstyle\fminimal\14focusable\1\vsource\valways\vheader\5\15diagnostic\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\14<C-Space>\rcomplete\n<C-y>\1\0\1\vselect\2\fconfirm\n<C-n>\21select_next_item\n<C-p>\1\0\4\n<C-p>\0\n<C-y>\0\14<C-Space>\0\n<C-n>\0\21select_prev_item\vinsert\vpreset\fmapping\fsnippet\1\0\3\fsnippet\0\fsources\0\fmapping\0\vexpand\1\0\1\vexpand\0\0\rbehavior\1\0\1\rbehavior\0\vSelect\19SelectBehavior\rhandlers\vlua_ls\0\bzls\1\0\2\vlua_ls\0\bzls\0\0\0\21ensure_installed\1\0\2\rhandlers\0\21ensure_installed\0\1\4\0\0\vlua_ls\18rust_analyzer\ngopls\20mason-lspconfig\nmason\vfidget\25default_capabilities\29make_client_capabilities\rprotocol\blsp\nforce\20tbl_deep_extend\bvim\17cmp_nvim_lsp\bcmp\21formatters_by_ft\1\0\1\21formatters_by_ft\0\nsetup\fconform\frequire\0" },
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\eidin\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\ng\0\1\5\1\5\0\n6\1\0\0'\3\1\0B\1\2\0028\1\0\0019\1\2\0015\3\3\0-\4\0\0=\4\4\3B\1\2\1K\0\1\0\2À\17capabilities\1\0\1\17capabilities\0\nsetup\14lspconfig\frequireÊ\2\0\0\t\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\3\t\0009\4\4\0009\4\5\4'\6\6\0'\a\a\0'\b\b\0B\4\4\2=\4\n\0035\4\f\0005\5\v\0=\5\2\4=\4\r\3B\1\2\0016\1\14\0009\1\15\1)\2\0\0=\2\16\0016\1\14\0009\1\15\1)\2\0\0=\2\17\1K\0\1\0\21zig_fmt_autosave\25zig_fmt_parse_errors\6g\bvim\rsettings\1\0\1\bzls\0\1\0\3\15warn_style\2\20enable_snippets\2\23enable_inlay_hints\2\rroot_dir\1\0\2\rsettings\0\rroot_dir\0\rzls.json\14build.zig\t.git\17root_pattern\tutil\nsetup\bzls\14lspconfig\frequire¸\2\0\0\b\1\16\0\0206\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\3\4\0-\4\0\0=\4\5\0035\4\r\0005\5\a\0005\6\6\0=\6\b\0055\6\n\0005\a\t\0=\a\v\6=\6\f\5=\5\14\4=\4\15\3B\1\2\1K\0\1\0\2À\rsettings\bLua\1\0\1\bLua\0\16diagnostics\fglobals\1\0\1\fglobals\0\1\a\0\0\bbit\bvim\ait\rdescribe\16before_each\15after_each\fruntime\1\0\2\fruntime\0\16diagnostics\0\1\0\1\fversion\fLua 5.1\17capabilities\1\0\2\17capabilities\0\rsettings\0\nsetup\vlua_ls\14lspconfig\frequireC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire\t\1\0\r\0:\0n6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\0016\0\0\0'\2\5\0B\0\2\0026\1\0\0'\3\6\0B\1\2\0026\2\a\0009\2\b\2'\4\t\0004\5\0\0006\6\a\0009\6\n\0069\6\v\0069\6\f\6B\6\1\0029\a\r\1B\a\1\0A\2\3\0026\3\0\0'\5\14\0B\3\2\0029\3\2\0034\5\0\0B\3\2\0016\3\0\0'\5\15\0B\3\2\0029\3\2\3B\3\1\0016\3\0\0'\5\16\0B\3\2\0029\3\2\0035\5\18\0005\6\17\0=\6\19\0055\6\22\0003\a\20\0>\a\1\0063\a\21\0=\a\23\0063\a\24\0=\a\25\6=\6\26\5B\3\2\0015\3\29\0009\4\27\0009\4\28\4=\4\30\0039\4\2\0005\6\"\0005\a \0003\b\31\0=\b!\a=\a#\0069\a$\0009\a%\a9\a&\a5\t(\0009\n$\0009\n'\n\18\f\3\0B\n\2\2=\n)\t9\n$\0009\n*\n\18\f\3\0B\n\2\2=\n+\t9\n$\0009\n,\n5\f-\0B\n\2\2=\n.\t9\n$\0009\n/\nB\n\1\2=\n0\tB\a\2\2=\a$\0069\a1\0009\a2\a4\t\3\0005\n3\0>\n\1\t5\n4\0>\n\2\t4\n\3\0005\v5\0>\v\1\nB\a\3\2=\a2\6B\4\2\0016\4\a\0009\0046\0049\0041\0045\0068\0005\a7\0=\a9\6B\4\2\0012\0\0€K\0\1\0\nfloat\1\0\1\nfloat\0\1\0\6\vborder\frounded\vprefix\5\nstyle\fminimal\14focusable\1\vsource\valways\vheader\5\15diagnostic\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\14<C-Space>\rcomplete\n<C-y>\1\0\1\vselect\2\fconfirm\n<C-n>\21select_next_item\n<C-p>\1\0\4\n<C-p>\0\n<C-y>\0\14<C-Space>\0\n<C-n>\0\21select_prev_item\vinsert\vpreset\fmapping\fsnippet\1\0\3\fsnippet\0\fsources\0\fmapping\0\vexpand\1\0\1\vexpand\0\0\rbehavior\1\0\1\rbehavior\0\vSelect\19SelectBehavior\rhandlers\vlua_ls\0\bzls\1\0\2\vlua_ls\0\bzls\0\0\0\21ensure_installed\1\0\2\rhandlers\0\21ensure_installed\0\1\4\0\0\vlua_ls\18rust_analyzer\ngopls\20mason-lspconfig\nmason\vfidget\25default_capabilities\29make_client_capabilities\rprotocol\blsp\nforce\20tbl_deep_extend\bvim\17cmp_nvim_lsp\bcmp\21formatters_by_ft\1\0\1\21formatters_by_ft\0\nsetup\fconform\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

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
