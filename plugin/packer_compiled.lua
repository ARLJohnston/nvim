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
local package_path_str = "/home/alistair/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/alistair/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/alistair/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/alistair/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/alistair/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["alpha-nvim"] = {
    config = { " require('configs/alpha') " },
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  coq_nvim = {
    config = { "\27LJ\2\ni\0\0\2\0\a\0\t4\0\0\0'\1\1\0=\1\0\0'\1\3\0=\1\2\0006\1\4\0009\1\5\1=\0\6\1K\0\1\0\17coq_settings\6g\bvim\tnone\23display.icons.mode\fshut-up\15auto_start\0" },
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/coq_nvim",
    url = "https://github.com/ms-jpq/coq_nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/vim-css-color",
    url = "https://github.com/ap/vim-css-color"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  vimtex = {
    config = { "\27LJ\2\n<\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\fzathura\23vimtex_view_method\6g\bvim\0" },
    loaded = true,
    path = "/home/alistair/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
try_loadstring("\27LJ\2\n<\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\fzathura\23vimtex_view_method\6g\bvim\0", "config", "vimtex")
time([[Config for vimtex]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
 require('configs/alpha') 
time([[Config for alpha-nvim]], false)
-- Config for: coq_nvim
time([[Config for coq_nvim]], true)
try_loadstring("\27LJ\2\ni\0\0\2\0\a\0\t4\0\0\0'\1\1\0=\1\0\0'\1\3\0=\1\2\0006\1\4\0009\1\5\1=\0\6\1K\0\1\0\17coq_settings\6g\bvim\tnone\23display.icons.mode\fshut-up\15auto_start\0", "config", "coq_nvim")
time([[Config for coq_nvim]], false)

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
