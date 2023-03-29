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
local package_path_str = "/home/thangphan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/thangphan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/thangphan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/thangphan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/thangphan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\6\28icon_separator_inactive\5\26icon_separator_active\5\19icon_close_tab\b\14clickable\2\rtabpages\2\14animation\2\15bufferline\6g\bvim\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  cmp_luasnip = {
    config = { "\27LJ\2\nG\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3�-\0\0\0009\0\1\0B\0\1\1K\0\1\0\0�\vexpand\23expand_or_jumpableC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2\1\0B\0\2\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0�\tjump\rjumpableC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2��B\0\2\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0)\2��B\0\2\1K\0\1\0\0�\tjump\rjumpableM\0\0\3\1\2\0\n-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0�\18change_choice\18choice_activeM\0\0\3\1\2\0\n-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0)\2��B\0\2\1K\0\1\0\0�\18change_choice\18choice_active�\4\1\0\n\0\"\0@6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0B\1\2\0019\1\5\0009\1\6\0015\3\a\0004\4\0\b6\5\0\0'\a\b\0B\5\2\0029\5\t\0055\6\r\0005\a\v\0004\b\3\0005\t\n\0>\t\1\b=\b\f\a=\a\14\6<\6\5\4=\4\15\3B\1\2\0016\1\16\0009\1\17\0019\1\18\0015\3\19\0'\4\20\0003\5\21\0B\1\4\0016\1\16\0009\1\17\0019\1\18\0015\3\22\0'\4\23\0003\5\24\0B\1\4\0016\1\16\0009\1\17\0019\1\18\0015\3\25\0'\4\26\0003\5\27\0B\1\4\0016\1\16\0009\1\17\0019\1\18\0015\3\28\0'\4\29\0003\5\30\0B\1\4\0016\1\16\0009\1\17\0019\1\18\0015\3\31\0'\4 \0003\5!\0B\1\4\0012\0\0�K\0\1\0\0\n<a-h>\1\3\0\0\6i\6s\0\n<c-c>\1\3\0\0\6i\6s\0\n<c-k>\1\3\0\0\6i\6s\0\n<c-j>\1\3\0\0\6i\6s\0\n<a-p>\1\3\0\0\6i\6s\bset\vkeymap\bvim\rext_opts\vactive\1\0\0\14virt_text\1\0\0\1\3\0\0\b●\18GruvboxOrange\15choiceNode\23luasnip.util.types\1\0\3\17updateevents\29TextChanged,TextChangedI\fhistory\2\24enable_autosnippets\2\15set_config\vconfig\1\0\1\npaths\29~/.config/nvim/snippets/\tload\29luasnip.loaders.from_lua\fluasnip\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/dart-vim-plugin",
    url = "https://github.com/dart-lang/dart-vim-plugin"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  everforest = {
    config = { "\27LJ\2\n�\3\0\0\4\0\r\0#6\0\0\0009\0\1\0\18\1\0\0'\3\2\0B\1\2\0016\1\0\0009\1\3\1'\2\5\0=\2\4\0016\1\0\0009\1\3\1)\2\1\0=\2\6\0016\1\0\0009\1\3\1)\2\1\0=\2\a\0016\1\0\0009\1\3\1)\2\0\0=\2\b\0016\1\0\0009\1\3\1)\2\1\0=\2\t\1\18\1\0\0'\3\n\0B\1\2\1\18\1\0\0'\3\v\0B\1\2\1\18\1\0\0'\3\f\0B\1\2\1K\0\1\0\27colorscheme everforest\22set termguicolors\24set background=dark&everforest_transparent_background&everforest_disable_italic_comment\29everforest_enable_italic)everforest_diagnostic_line_highlight\tsoft\26everforest_background\6g\14syntax on\bcmd\bvim\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["flutter-tools.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18flutter-tools\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/flutter-tools.nvim",
    url = "https://github.com/akinsho/flutter-tools.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\2>\2\2\1=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\22--stdin-file-path\0\f--write\1\0\2\nstdin\2\bexe\16rome format�\1\0\0\5\0\6\1\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\2\0\0\21--stdin-filepath\1\0\2\nstdin\2\bexe\rprettier\5����\4b\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\19--style=Google\28--assume-filename=.java\1\0\2\nstdin\2\bexe\17clang-format#\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\bexe\ngofmt\nstdin\2�\1\0\1\a\0\6\0\16\14\0\0\0X\1\1�4\0\0\0005\1\0\0009\2\1\0\n\2\0\0X\2\a�6\2\2\0009\2\3\2\18\4\1\0'\5\4\0009\6\1\0&\5\6\5B\2\3\0015\2\5\0L\2\2\0\1\0\2\bexe\16dart format\nstdin\2\19--line-length \vinsert\ntable\16line_length\1\2\0\0\18--output show(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\bexe\15lua-format\nstdin\2�\5\1\0\t\0!\0H6\0\0\0'\2\1\0B\0\2\0023\1\2\0003\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0+\6\2\0B\3\3\0019\3\b\0005\5\t\0005\6\n\0004\a\3\0>\2\1\a=\a\v\0064\a\3\0>\2\1\a=\a\f\0064\a\3\0>\2\1\a=\a\r\0064\a\3\0>\2\1\a=\a\14\0064\a\3\0>\2\1\a=\a\15\0064\a\3\0>\2\1\a=\a\16\0064\a\3\0>\2\1\a=\a\17\0064\a\3\0>\2\1\a=\a\18\0064\a\3\0>\2\1\a=\a\19\0064\a\3\0>\2\1\a=\a\20\0064\a\3\0>\2\1\a=\a\21\0064\a\3\0>\2\1\a=\a\22\0064\a\3\0>\2\1\a=\a\23\0064\a\3\0003\b\24\0>\b\1\a=\a\25\0064\a\3\0003\b\26\0>\b\1\a=\a\27\0064\a\3\0003\b\28\0>\b\1\a=\a\29\0064\a\3\0003\b\30\0>\b\1\a=\a\31\6=\6 \5B\3\2\1K\0\1\0\rfiletype\blua\0\tdart\0\ago\0\tjava\0\ash\rmarkdown\tyaml\tscss\tjson\bvue\bcss\vsvelte\thtml\15javascript\15typescript\20typescriptreact\20javascriptreact\1\0\0\1\0\1\flogging\1\nsetup�\1        augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.mjs,*.java,*.ts,*.tsx,*.jsx,*.js,*.lua,*.md,*.mdx,*.yml,*.json,*.svelte,*.sol,*.go, FormatWrite\n        augroup END\n    \14nvim_exec\bapi\bvim\0\0\14formatter\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15symbol_map\1\0\25\tFile\17   (File)\fKeyword\20   (Keyword)\14Reference\22   (Reference)\tEnum\16 練 (Enum)\vFolder\19   (Folder)\nValue\18   (Value)\15EnumMember\23   (EnumMember)\tUnit\17   (Unit)\rConstant\21 ﲀ  (Constant)\rProperty\20 襁 (Property)\vStruct\19 ﳤ  (Struct)\vModule\19   (Module)\nEvent\18   (Event)\14Interface\22 ﰮ  (Interface)\rOperator\21   (Operator)\nClass\18   (Class)\18TypeParameter\26   (TypeParameter)\rVariable\21[] (Variable)\nField\18 ﰠ  (Field)\16Constructor\24   (Constructor)\rFunction\21   (Function)\vMethod\19   (Method)\tText\18   (Text) \nColor\18   (Color)\fSnippet\20   (Snippet)\1\0\2\vpreset\rcodicons\tmode\vsymbol\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nT\0\0\5\0\6\0\n6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\2\5\0004\4\0\0B\2\2\1K\0\1\0\nsetup\bset\vkeymap\bvim\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/kkharji/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\6\0\0\a\0*\0C6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0034\4\3\0005\5\21\0005\6\20\0=\6\22\0055\6\23\0=\6\24\5>\5\1\4=\4\25\0034\4\3\0005\5\26\0>\5\1\4=\4\27\0034\4\0\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \3=\3!\0025\3\"\0004\4\0\0=\4\19\0034\4\0\0=\4\25\0035\4#\0=\4\27\0035\4$\0=\4\28\0034\4\0\0=\4\30\0034\4\0\0=\4 \3=\3%\0024\3\0\0=\3&\0024\3\0\0=\3\n\0024\3\0\0=\3'\0025\3(\0=\3)\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\rfugitive\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rfiletype\14lualine_y\1\2\0\0\5\14lualine_x\14lualine_c\1\2\1\0\rfilename\tpath\3\1\14lualine_b\fsources\1\2\0\0\20nvim_diagnostic\fsymbols\1\2\0\0\16diagnostics\1\0\4\nerror\t \thint\t \tinfo\t \twarn\t \14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\ftabline\3�\a\vwinbar\3�\a\15statusline\3�\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\nright\b\tleft\b\25component_separators\1\0\2\nright\b\tleft\b\1\0\4\ntheme\tauto\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\24package_uninstalled\b✗\20package_pending\b➜\22package_installed\b✓\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n�\17\0\0\a\0008\0M6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\19\0005\5\18\0=\5\20\4=\4\21\3=\3\22\0025\3\23\0005\4\24\0=\4\25\0035\4\27\0005\5\26\0=\5\28\0045\5\29\0005\6\30\0=\6\31\5=\5 \4=\4!\3=\3\"\0024\3\0\0=\3#\0025\3(\0005\4$\0004\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\4=\4)\0036\4*\0=\4+\0035\4-\0005\5,\0=\5!\4=\4\"\3=\3.\0025\3/\0005\0041\0005\0050\0=\5!\4=\4\"\3=\0032\0025\0035\0005\0043\0005\0054\0=\5!\4=\4\"\3=\3\21\2B\0\2\0016\0\0\0009\0\1\0'\0026\0B\0\2\0016\0\0\0009\0\1\0'\0027\0B\0\2\1K\0\1\0'nnoremap <c-t> :Neotree toggle<cr>'nnoremap <c-f> :Neotree reveal<cr>\1\0\0\1\0\a\agu\21git_unstage_file\agc\15git_commit\6A\16git_add_all\agp\rgit_push\agr\20git_revert_file\agg\24git_commit_and_push\aga\17git_add_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\abd\18buffer_delete\6.\rset_root\t<bs>\16navigate_up\1\0\3\24follow_current_file\2\18show_unloaded\2\21group_empty_dirs\2\15filesystem\1\0\0\1\0\t\6f\21filter_on_submit\a]g\22next_git_modified\6/\17fuzzy_finder\a[g\22prev_git_modified\n<c-x>\17clear_filter\6H\18toggle_hidden\6D\27fuzzy_finder_directory\6C\rset_root\6U\16navigate_up\27use_libuv_file_watcher\btru\19filtered_items\1\0\3\21group_empty_dirs\1\26hijack_netrw_behavior\17open_current\24follow_current_file\2\15never_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\1\18hide_dotfiles\1\fvisible\1\18nesting_rules\vwindow\rmappings\6a\vconfig\1\0\1\14show_path\tnone\1\2\0\0\badd\f<space>\1\0\15\6K\18add_directory\18<2-LeftMouse>\topen\6m\21cut_to_clipboard\6c\22copy_to_clipboard\6R\frefresh\6d\vdelete\6o\topen\6z\15close_node\6s\16open_vsplit\6S\15open_split\t<cr>\topen\6q\17close_window\6?\14show_help\6r\vrename\6p\25paste_from_clipboard\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\rposition\tleft\nwidth\3\30\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\frenamed\b\rmodified\6M\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\runstaged\b\fignored\b\14untracked\b\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\18folder_closed\b\fdefault\6*\17folder_empty\bﰊ\14highlight\20NeoTreeFileIcon\16folder_open\b\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\14highlight\24NeoTreeIndentMarker\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\1\22enable_git_status\1\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n�\1\0\1\3\0\b\0\0264\1\t\0005\2\0\0>\0\2\2>\2\1\0015\2\1\0>\0\2\2>\2\2\0015\2\2\0>\0\2\2>\2\3\0015\2\3\0>\0\2\2>\2\4\0015\2\4\0>\0\2\2>\2\5\0015\2\5\0>\0\2\2>\2\6\0015\2\6\0>\0\2\2>\2\a\0015\2\a\0>\0\2\2>\2\b\1L\1\2\0\1\2\0\0\b│\1\2\0\0\b╰\1\2\0\0\b─\1\2\0\0\b╯\1\2\0\0\b│\1\2\0\0\b╮\1\2\0\0\b─\1\2\0\0\b╭0\0\1\4\0\2\0\6\18\3\0\0009\1\0\0B\1\2\2+\2\1\0=\2\1\1L\1\2\0\15scrollable\ninfo_�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2\v\0\1\1\0\0\0\1K\0\1\0}\0\1\3\2\3\0\20-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\n�-\1\1\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\2\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\2�\5�\rcomplete\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\2�\21select_prev_item\fvisible�\6\1\0\16\0004\0Y6\0\0\0'\1\2\0=\1\1\0003\0\3\0006\1\4\0'\3\5\0B\1\2\0029\2\a\1=\2\6\0013\2\b\0=\2\a\0016\2\4\0'\4\t\0B\2\2\0026\3\4\0'\5\n\0B\3\2\0026\4\4\0'\6\v\0B\4\2\0023\5\f\0009\6\r\0025\b\17\0005\t\15\0003\n\14\0=\n\16\t=\t\18\b5\t\23\0009\n\19\0035\f\20\0005\r\21\0=\r\22\fB\n\2\2=\n\24\t=\t\25\b9\t\26\0029\t\27\t9\t\28\t5\v\30\0009\f\26\0029\f\29\f)\14��B\f\2\2=\f\31\v9\f\26\0029\f\29\f)\14\4\0B\f\2\2=\f \v9\f\26\0029\f!\fB\f\1\2=\f\"\v9\f\26\0029\f#\fB\f\1\2=\f$\v9\f\26\0023\14%\0005\15&\0B\f\3\2=\f'\v9\f\26\0023\14(\0005\15)\0B\f\3\2=\f*\v9\f\26\0029\f+\f5\14,\0B\f\2\2=\f-\vB\t\2\2=\t\26\b4\t\6\0005\n.\0>\n\1\t5\n/\0>\n\2\t5\n0\0>\n\3\t5\n1\0>\n\4\t5\n2\0>\n\5\t=\t3\bB\6\2\0012\0\0�K\0\1\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\forgmode\1\0\1\tname\rnvim_lsp\t<CR>\1\0\1\vselect\2\fconfirm\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\15formatting\vformat\1\0\0\tmenu\1\0\3\rnvim_lsp\n[LSP]\vbuffer\n[Buf]\15dictionary\v[Dict]\1\0\2\14with_text\1\rmaxwidth\0032\15cmp_format\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\fluasnip\flspkind\bcmp\0\tinfo\ninfo_\21cmp.utils.window\frequire\0#menu,menuone,noselect,noinsert\16completeopt\bvim\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\rRRGGBBAA\2\nnames\1\vRRGGBB\2\bRGB\2\bcss\2\vhsl_fn\2\vrgb_fn\2\vcss_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1�\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1�\24nvim_buf_set_option\bapi\bvim�\4\1\2\v\0\21\00053\2\0\0003\3\1\0005\4\2\0\18\5\2\0'\a\3\0'\b\4\0'\t\5\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\0019\5\f\0009\5\r\5\15\0\5\0X\6\20�6\5\14\0009\5\15\0059\5\16\5'\a\17\0B\5\2\0016\5\14\0009\5\15\0059\5\16\5'\a\18\0B\5\2\0016\5\14\0009\5\15\0059\5\16\5'\a\19\0B\5\2\0016\5\14\0009\5\15\0059\5\16\5'\a\20\0B\5\2\0012\0\0�K\0\1\0\16augroup END:autocmd BufWritePre <buffer> lua vim.lsp.buf.format()\24autocmd! * <buffer>\19augroup Format\17nvim_command\bapi\bvim\24document_formatting\24server_capabilities1:lua require(\"jdtls\").organize_imports()<CR>\14<space>oi&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd\6n\1\0\2\fnoremap\2\vsilent\2\0\0A\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1�\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1�\24nvim_buf_set_option\bapi\bvim�\2\1\2\v\0\f\0\0293\2\0\0003\3\1\0005\4\2\0\18\5\2\0'\a\3\0'\b\4\0'\t\5\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\0012\0\0�K\0\1\0001:lua require(\"jdtls\").organize_imports()<CR>\14<space>oi&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd\6n\1\0\2\fnoremap\2\vsilent\2\0\0�\14\1\0\17\0c\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0003\3\4\0006\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0029\5\t\0049\5\n\0059\5\v\5+\6\2\0=\6\f\0059\5\r\0009\5\14\0055\a\15\0=\3\16\a=\4\17\a5\b\18\0=\b\19\aB\5\2\0019\5\20\0009\5\14\0055\a\21\0=\3\16\a5\b!\0005\t\25\0005\n\23\0005\v\22\0=\v\24\n=\n\26\t5\n\30\0006\v\5\0009\v\27\v9\v\28\v'\r\29\0+\14\2\0B\v\3\2=\v\31\n=\n \t=\t\"\b=\b#\aB\5\2\0019\5$\0009\5\14\0055\a%\0=\3\16\aB\5\2\0016\5\0\0'\a\1\0B\5\2\0029\5&\0059\5\14\0055\a'\0=\3\16\a=\4\17\aB\5\2\0019\5(\0009\5\14\0055\a)\0=\3\16\a5\b*\0=\b\19\a=\4\17\aB\5\2\0016\5\0\0'\a\1\0B\5\2\0029\5+\0059\5\14\0054\a\0\0B\5\2\0016\5\0\0'\a\1\0B\5\2\0029\6,\0009\6\14\0065\b-\0=\3\16\b=\4\17\b5\t/\0005\n.\0=\n0\t5\n1\0=\n\19\t9\n2\0059\n3\n'\f4\0'\r5\0B\n\3\2=\n6\t=\t7\bB\6\2\0019\0068\0009\6\14\0065\b9\0=\3\16\b=\4\17\bB\6\2\0019\6:\0009\6\14\0065\b;\0=\3\16\b=\4\17\bB\6\2\0019\6<\0009\6\14\0065\b=\0=\3\16\bB\6\2\0019\6>\0009\6\14\0065\b?\0=\3\16\b5\t@\0=\t0\b5\tB\0005\nA\0=\nC\t=\t#\bB\6\2\0019\6D\0009\6\14\0065\bE\0=\3\16\bB\6\2\0019\6F\0009\6\14\0065\bG\0=\3\16\b5\tH\0=\t0\bB\6\2\0019\6I\0009\6\14\0065\bJ\0=\3\16\b5\tK\0=\t\19\bB\6\2\0015\6L\0006\aM\0\18\t\6\0B\a\2\4H\n\v�'\fN\0\18\r\n\0&\f\r\f6\r\5\0009\rO\r9\rP\r\18\15\f\0005\16Q\0=\vR\16=\fS\16B\r\3\1F\n\3\3R\n�\1276\a\5\0009\a\6\a9\aT\a6\b\5\0009\b\6\b9\bV\b6\n\5\0009\n\6\n9\nW\n9\nX\n5\vY\0005\fZ\0=\f[\vB\b\3\2=\bU\a6\a\5\0009\a\\\a9\a]\a'\t^\0'\n_\0'\v`\0B\a\4\0016\a\5\0009\a\\\a9\a]\a'\t^\0'\na\0'\vb\0B\a\4\1K\0\1\0)<cmd>TypescriptAddMissingImports<cr>\14<leader>a'<cmd>TypescriptOrganizeImports<cr>\14<leader>o\6n\bset\vkeymap\17virtual_text\1\0\2\vprefix\b●\fspacing\3\4\1\0\1\21update_in_insert\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tWarn\t \tHint\tﴞ \nError\t \tInfo\t \1\a\0\0\15typescript\20typescriptreact\19typescript.tsx\19typescript.jsx\15javascript\20javascriptreact\1\0\0\rtsserver\1\2\0\0\njdtls\1\0\0\njdtls\1\0\0\rdockerls\ranalyses\1\0\1\16staticcheck\2\1\0\1\17unusedparams\2\1\3\0\0\ngopls\nserve\1\0\0\ngopls\1\0\0\vbashls\1\0\0\16tailwindcss\1\0\0\18rust_analyzer\19default_config\rroot_dir\t.git\17package.json\17root_pattern\tutil\1\2\0\0\rsolidity\bcmd\1\0\0\1\3\0\0\16solidity-ls\f--stdio\1\0\0\16solidity_ls\vsolang\1\4\0\0\thtml\bjsp\bejs\1\0\0\thtml\1\0\0\rprismals\1\0\0\vdartls\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\1\20checkThirdParty\1\5\26nvim_get_runtime_file\bapi\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\1\0\0\vlua_ls\14filetypes\1\3\0\0\bcss\tscss\17capabilities\14on_attach\1\0\0\nsetup\ncssls\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0\0\21vim.lsp.protocol\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\20\0\0295\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\6\0005\4\4\0004\5\0\0=\5\5\4=\4\a\0035\4\b\0004\5\0\0=\5\5\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\0\r\4=\4\14\3B\1\2\0026\2\1\0'\4\15\0B\2\2\0029\2\16\2B\2\1\0029\3\17\0025\4\19\0=\4\18\3K\0\1\0\1\3\0\0\15javascript\19typescript.tsx\27filetype_to_parsername\btsx\23get_parser_configs\28nvim-treesitter.parsers\fautotag\14filetypes\1\0\1\venable\2\21ensure_installed\1\n\0\0\vprisma\15javascript\tjava\tdart\blua\btsx\ago\borg\tfish\vindent\1\0\1\venable\2\14highlight\1\0\0\fdisable\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\1\r\0\0\thtml\15javascript\15typescript\20javascriptreact\20typescriptreact\vsvelte\bvue\btsx\bjsx\rrescript\rmarkdown\tjava\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\5\0\0\rneo-tree\19neo-tree-popup\vnotify\rquickfix\1\0\3\19autoselect_one\2\23other_win_hl_color\f#f3a14e\20include_current\1\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["package-info.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\a\0\14\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0005\2\6\0'\3\a\0006\4\0\0'\6\1\0B\4\2\0029\4\b\0045\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0005\2\n\0'\3\v\0006\4\0\0'\6\1\0B\4\2\0029\4\f\0045\5\r\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\thide\15<LEADER>nc\1\2\0\0\6n\1\0\2\fnoremap\2\vsilent\2\tshow\15<LEADER>ns\1\2\0\0\6n\bset\vkeymap\bvim\nsetup\17package-info\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/package-info.nvim",
    url = "https://github.com/vuki656/package-info.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope-simulators.nvim"] = {
    config = { "\27LJ\2\nb\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\21android_emulator\1\20apple_simulator\2\nsetup\15simulators\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/telescope-simulators.nvim",
    url = "https://github.com/dimaportenko/telescope-simulators.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/telescope-vim-bookmarks.nvim",
    url = "https://github.com/tom-anders/telescope-vim-bookmarks.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["template-string.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\19restore_quotes\1\0\2\bjsx\6\"\vnormal\6'\14filetypes\1\0\2\27remove_template_string\1\17jsx_brackets\2\1\6\0\0\15typescript\15javascript\20typescriptreact\20javascriptreact\vpython\nsetup\20template-string\frequire\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/template-string.nvim",
    url = "https://github.com/axelvc/template-string.nvim"
  },
  ["vim-bookmarks"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\16\0%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0B\0\4\0016\0\0\0009\0\5\0009\0\6\0'\2\a\0'\3\n\0'\4\v\0B\0\4\0016\0\0\0009\0\5\0009\0\6\0'\2\a\0'\3\f\0'\4\r\0B\0\4\0016\0\0\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0B\0\4\1K\0\1\0N<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>\amnE<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>\ama\30<cmd>BookmarkClearAll<cr>\amx\28<cmd>BookmarkToggle<cr>\amm\6n\bset\vkeymap\29bookmark_highlight_lines\b♥\18bookmark_sign\6g\bvim\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
  },
  ["vim-closetag"] = {
    config = { "\27LJ\2\ny\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Zlet g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.ejs,*.js,*.rs,*.jsp,*.xml'\bcmd\bvim\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\n�\1\0\0\2\0\n\2\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0*\1\0\0=\1\6\0006\0\0\0009\0\1\0*\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\n<C-\\>\27floaterm_keymap_toggle\20floaterm_height\19floaterm_width\16bottomright\22floaterm_position\nfloat\21floaterm_wintype\6g\bvim�̙�\6���\3\1����\3\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-smoothie",
    url = "https://github.com/psliwka/vim-smoothie"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-svelte"] = {
    config = { "\27LJ\2\nA\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\15typescript\25svelte_preprocessors\6g\bvim\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/vim-svelte",
    url = "https://github.com/evanleck/vim-svelte"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\f\0\18\1\0276\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0009\6\t\0005\b\n\0005\t\v\0=\t\f\b9\t\r\0B\t\1\2=\t\14\b5\t\15\0009\n\16\0B\n\1\0?\n\0\0=\t\17\bB\6\2\0A\4\0\0A\1\1\1K\0\1\0\tleft\23popupmenu_devicons\1\2\0\0\6 \16highlighter\22basic_highlighter\15highlights\1\0\1\vborder\vNormal\1\0\2\vborder\frounded\rpumblend\3\20\27popupmenu_border_theme\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\3\0\0\6/\6?\1\0\4\rnext_key\n<C-j>\17previous_key\n<C-k>\15reject_key\n<C-h>\15accept_key\n<C-l>\nsetup\vwilder\frequire\5����\4\0" },
    loaded = true,
    path = "/home/thangphan/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n�\1\0\1\3\0\b\0\0264\1\t\0005\2\0\0>\0\2\2>\2\1\0015\2\1\0>\0\2\2>\2\2\0015\2\2\0>\0\2\2>\2\3\0015\2\3\0>\0\2\2>\2\4\0015\2\4\0>\0\2\2>\2\5\0015\2\5\0>\0\2\2>\2\6\0015\2\6\0>\0\2\2>\2\a\0015\2\a\0>\0\2\2>\2\b\1L\1\2\0\1\2\0\0\b│\1\2\0\0\b╰\1\2\0\0\b─\1\2\0\0\b╯\1\2\0\0\b│\1\2\0\0\b╮\1\2\0\0\b─\1\2\0\0\b╭0\0\1\4\0\2\0\6\18\3\0\0009\1\0\0B\1\2\2+\2\1\0=\2\1\1L\1\2\0\15scrollable\ninfo_�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2\v\0\1\1\0\0\0\1K\0\1\0}\0\1\3\2\3\0\20-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\n�-\1\1\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\2\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\2�\5�\rcomplete\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\2�\21select_prev_item\fvisible�\6\1\0\16\0004\0Y6\0\0\0'\1\2\0=\1\1\0003\0\3\0006\1\4\0'\3\5\0B\1\2\0029\2\a\1=\2\6\0013\2\b\0=\2\a\0016\2\4\0'\4\t\0B\2\2\0026\3\4\0'\5\n\0B\3\2\0026\4\4\0'\6\v\0B\4\2\0023\5\f\0009\6\r\0025\b\17\0005\t\15\0003\n\14\0=\n\16\t=\t\18\b5\t\23\0009\n\19\0035\f\20\0005\r\21\0=\r\22\fB\n\2\2=\n\24\t=\t\25\b9\t\26\0029\t\27\t9\t\28\t5\v\30\0009\f\26\0029\f\29\f)\14��B\f\2\2=\f\31\v9\f\26\0029\f\29\f)\14\4\0B\f\2\2=\f \v9\f\26\0029\f!\fB\f\1\2=\f\"\v9\f\26\0029\f#\fB\f\1\2=\f$\v9\f\26\0023\14%\0005\15&\0B\f\3\2=\f'\v9\f\26\0023\14(\0005\15)\0B\f\3\2=\f*\v9\f\26\0029\f+\f5\14,\0B\f\2\2=\f-\vB\t\2\2=\t\26\b4\t\6\0005\n.\0>\n\1\t5\n/\0>\n\2\t5\n0\0>\n\3\t5\n1\0>\n\4\t5\n2\0>\n\5\t=\t3\bB\6\2\0012\0\0�K\0\1\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\28nvim_lsp_signature_help\1\0\1\tname\forgmode\1\0\1\tname\rnvim_lsp\t<CR>\1\0\1\vselect\2\fconfirm\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\15formatting\vformat\1\0\0\tmenu\1\0\3\rnvim_lsp\n[LSP]\vbuffer\n[Buf]\15dictionary\v[Dict]\1\0\2\14with_text\1\rmaxwidth\0032\15cmp_format\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\fluasnip\flspkind\bcmp\0\tinfo\ninfo_\21cmp.utils.window\frequire\0#menu,menuone,noselect,noinsert\16completeopt\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\0\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\2>\2\2\1=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\22--stdin-file-path\0\f--write\1\0\2\nstdin\2\bexe\16rome format�\1\0\0\5\0\6\1\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\2\0\0\21--stdin-filepath\1\0\2\nstdin\2\bexe\rprettier\5����\4b\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\19--style=Google\28--assume-filename=.java\1\0\2\nstdin\2\bexe\17clang-format#\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\bexe\ngofmt\nstdin\2�\1\0\1\a\0\6\0\16\14\0\0\0X\1\1�4\0\0\0005\1\0\0009\2\1\0\n\2\0\0X\2\a�6\2\2\0009\2\3\2\18\4\1\0'\5\4\0009\6\1\0&\5\6\5B\2\3\0015\2\5\0L\2\2\0\1\0\2\bexe\16dart format\nstdin\2\19--line-length \vinsert\ntable\16line_length\1\2\0\0\18--output show(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\bexe\15lua-format\nstdin\2�\5\1\0\t\0!\0H6\0\0\0'\2\1\0B\0\2\0023\1\2\0003\2\3\0006\3\4\0009\3\5\0039\3\6\3'\5\a\0+\6\2\0B\3\3\0019\3\b\0005\5\t\0005\6\n\0004\a\3\0>\2\1\a=\a\v\0064\a\3\0>\2\1\a=\a\f\0064\a\3\0>\2\1\a=\a\r\0064\a\3\0>\2\1\a=\a\14\0064\a\3\0>\2\1\a=\a\15\0064\a\3\0>\2\1\a=\a\16\0064\a\3\0>\2\1\a=\a\17\0064\a\3\0>\2\1\a=\a\18\0064\a\3\0>\2\1\a=\a\19\0064\a\3\0>\2\1\a=\a\20\0064\a\3\0>\2\1\a=\a\21\0064\a\3\0>\2\1\a=\a\22\0064\a\3\0>\2\1\a=\a\23\0064\a\3\0003\b\24\0>\b\1\a=\a\25\0064\a\3\0003\b\26\0>\b\1\a=\a\27\0064\a\3\0003\b\28\0>\b\1\a=\a\29\0064\a\3\0003\b\30\0>\b\1\a=\a\31\6=\6 \5B\3\2\1K\0\1\0\rfiletype\blua\0\tdart\0\ago\0\tjava\0\ash\rmarkdown\tyaml\tscss\tjson\bvue\bcss\vsvelte\thtml\15javascript\15typescript\20typescriptreact\20javascriptreact\1\0\0\1\0\1\flogging\1\nsetup�\1        augroup FormatAutogroup\n          autocmd!\n          autocmd BufWritePost *.mjs,*.java,*.ts,*.tsx,*.jsx,*.js,*.lua,*.md,*.mdx,*.yml,*.json,*.svelte,*.sol,*.go, FormatWrite\n        augroup END\n    \14nvim_exec\bapi\bvim\0\0\14formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\6\28icon_separator_inactive\5\26icon_separator_active\5\19icon_close_tab\b\14clickable\2\rtabpages\2\14animation\2\15bufferline\6g\bvim\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\rRRGGBBAA\2\nnames\1\vRRGGBB\2\bRGB\2\bcss\2\vhsl_fn\2\vrgb_fn\2\vcss_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\n�\1\0\0\2\0\n\2\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0*\1\0\0=\1\6\0006\0\0\0009\0\1\0*\1\1\0=\1\a\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0K\0\1\0\n<C-\\>\27floaterm_keymap_toggle\20floaterm_height\19floaterm_width\16bottomright\22floaterm_position\nfloat\21floaterm_wintype\6g\bvim�̙�\6���\3\1����\3\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15symbol_map\1\0\25\tFile\17   (File)\fKeyword\20   (Keyword)\14Reference\22   (Reference)\tEnum\16 練 (Enum)\vFolder\19   (Folder)\nValue\18   (Value)\15EnumMember\23   (EnumMember)\tUnit\17   (Unit)\rConstant\21 ﲀ  (Constant)\rProperty\20 襁 (Property)\vStruct\19 ﳤ  (Struct)\vModule\19   (Module)\nEvent\18   (Event)\14Interface\22 ﰮ  (Interface)\rOperator\21   (Operator)\nClass\18   (Class)\18TypeParameter\26   (TypeParameter)\rVariable\21[] (Variable)\nField\18 ﰠ  (Field)\16Constructor\24   (Constructor)\rFunction\21   (Function)\vMethod\19   (Method)\tText\18   (Text) \nColor\18   (Color)\fSnippet\20   (Snippet)\1\0\2\vpreset\rcodicons\tmode\vsymbol\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1�\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1�\24nvim_buf_set_option\bapi\bvim�\4\1\2\v\0\21\00053\2\0\0003\3\1\0005\4\2\0\18\5\2\0'\a\3\0'\b\4\0'\t\5\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\0019\5\f\0009\5\r\5\15\0\5\0X\6\20�6\5\14\0009\5\15\0059\5\16\5'\a\17\0B\5\2\0016\5\14\0009\5\15\0059\5\16\5'\a\18\0B\5\2\0016\5\14\0009\5\15\0059\5\16\5'\a\19\0B\5\2\0016\5\14\0009\5\15\0059\5\16\5'\a\20\0B\5\2\0012\0\0�K\0\1\0\16augroup END:autocmd BufWritePre <buffer> lua vim.lsp.buf.format()\24autocmd! * <buffer>\19augroup Format\17nvim_command\bapi\bvim\24document_formatting\24server_capabilities1:lua require(\"jdtls\").organize_imports()<CR>\14<space>oi&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd\6n\1\0\2\fnoremap\2\vsilent\2\0\0A\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1�\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1�\24nvim_buf_set_option\bapi\bvim�\2\1\2\v\0\f\0\0293\2\0\0003\3\1\0005\4\2\0\18\5\2\0'\a\3\0'\b\4\0'\t\5\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\0012\0\0�K\0\1\0001:lua require(\"jdtls\").organize_imports()<CR>\14<space>oi&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd\6n\1\0\2\fnoremap\2\vsilent\2\0\0�\14\1\0\17\0c\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0003\3\4\0006\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0029\5\t\0049\5\n\0059\5\v\5+\6\2\0=\6\f\0059\5\r\0009\5\14\0055\a\15\0=\3\16\a=\4\17\a5\b\18\0=\b\19\aB\5\2\0019\5\20\0009\5\14\0055\a\21\0=\3\16\a5\b!\0005\t\25\0005\n\23\0005\v\22\0=\v\24\n=\n\26\t5\n\30\0006\v\5\0009\v\27\v9\v\28\v'\r\29\0+\14\2\0B\v\3\2=\v\31\n=\n \t=\t\"\b=\b#\aB\5\2\0019\5$\0009\5\14\0055\a%\0=\3\16\aB\5\2\0016\5\0\0'\a\1\0B\5\2\0029\5&\0059\5\14\0055\a'\0=\3\16\a=\4\17\aB\5\2\0019\5(\0009\5\14\0055\a)\0=\3\16\a5\b*\0=\b\19\a=\4\17\aB\5\2\0016\5\0\0'\a\1\0B\5\2\0029\5+\0059\5\14\0054\a\0\0B\5\2\0016\5\0\0'\a\1\0B\5\2\0029\6,\0009\6\14\0065\b-\0=\3\16\b=\4\17\b5\t/\0005\n.\0=\n0\t5\n1\0=\n\19\t9\n2\0059\n3\n'\f4\0'\r5\0B\n\3\2=\n6\t=\t7\bB\6\2\0019\0068\0009\6\14\0065\b9\0=\3\16\b=\4\17\bB\6\2\0019\6:\0009\6\14\0065\b;\0=\3\16\b=\4\17\bB\6\2\0019\6<\0009\6\14\0065\b=\0=\3\16\bB\6\2\0019\6>\0009\6\14\0065\b?\0=\3\16\b5\t@\0=\t0\b5\tB\0005\nA\0=\nC\t=\t#\bB\6\2\0019\6D\0009\6\14\0065\bE\0=\3\16\bB\6\2\0019\6F\0009\6\14\0065\bG\0=\3\16\b5\tH\0=\t0\bB\6\2\0019\6I\0009\6\14\0065\bJ\0=\3\16\b5\tK\0=\t\19\bB\6\2\0015\6L\0006\aM\0\18\t\6\0B\a\2\4H\n\v�'\fN\0\18\r\n\0&\f\r\f6\r\5\0009\rO\r9\rP\r\18\15\f\0005\16Q\0=\vR\16=\fS\16B\r\3\1F\n\3\3R\n�\1276\a\5\0009\a\6\a9\aT\a6\b\5\0009\b\6\b9\bV\b6\n\5\0009\n\6\n9\nW\n9\nX\n5\vY\0005\fZ\0=\f[\vB\b\3\2=\bU\a6\a\5\0009\a\\\a9\a]\a'\t^\0'\n_\0'\v`\0B\a\4\0016\a\5\0009\a\\\a9\a]\a'\t^\0'\na\0'\vb\0B\a\4\1K\0\1\0)<cmd>TypescriptAddMissingImports<cr>\14<leader>a'<cmd>TypescriptOrganizeImports<cr>\14<leader>o\6n\bset\vkeymap\17virtual_text\1\0\2\vprefix\b●\fspacing\3\4\1\0\1\21update_in_insert\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tWarn\t \tHint\tﴞ \nError\t \tInfo\t \1\a\0\0\15typescript\20typescriptreact\19typescript.tsx\19typescript.jsx\15javascript\20javascriptreact\1\0\0\rtsserver\1\2\0\0\njdtls\1\0\0\njdtls\1\0\0\rdockerls\ranalyses\1\0\1\16staticcheck\2\1\0\1\17unusedparams\2\1\3\0\0\ngopls\nserve\1\0\0\ngopls\1\0\0\vbashls\1\0\0\16tailwindcss\1\0\0\18rust_analyzer\19default_config\rroot_dir\t.git\17package.json\17root_pattern\tutil\1\2\0\0\rsolidity\bcmd\1\0\0\1\3\0\0\16solidity-ls\f--stdio\1\0\0\16solidity_ls\vsolang\1\4\0\0\thtml\bjsp\bejs\1\0\0\thtml\1\0\0\rprismals\1\0\0\vdartls\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\1\20checkThirdParty\1\5\26nvim_get_runtime_file\bapi\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\1\0\0\vlua_ls\14filetypes\1\3\0\0\bcss\tscss\17capabilities\14on_attach\1\0\0\nsetup\ncssls\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0\0\21vim.lsp.protocol\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: telescope-simulators.nvim
time([[Config for telescope-simulators.nvim]], true)
try_loadstring("\27LJ\2\nb\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\21android_emulator\1\20apple_simulator\2\nsetup\15simulators\frequire\0", "config", "telescope-simulators.nvim")
time([[Config for telescope-simulators.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nT\0\0\5\0\6\0\n6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\2\5\0004\4\0\0B\2\2\1K\0\1\0\nsetup\bset\vkeymap\bvim\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\4\0\0\6\0\20\0\0295\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\6\0005\4\4\0004\5\0\0=\5\5\4=\4\a\0035\4\b\0004\5\0\0=\5\5\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\0\r\4=\4\14\3B\1\2\0026\2\1\0'\4\15\0B\2\2\0029\2\16\2B\2\1\0029\3\17\0025\4\19\0=\4\18\3K\0\1\0\1\3\0\0\15javascript\19typescript.tsx\27filetype_to_parsername\btsx\23get_parser_configs\28nvim-treesitter.parsers\fautotag\14filetypes\1\0\1\venable\2\21ensure_installed\1\n\0\0\vprisma\15javascript\tjava\tdart\blua\btsx\ago\borg\tfish\vindent\1\0\1\venable\2\14highlight\1\0\0\fdisable\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\1\r\0\0\thtml\15javascript\15typescript\20javascriptreact\20typescriptreact\vsvelte\bvue\btsx\bjsx\rrescript\rmarkdown\tjava\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: cmp_luasnip
time([[Config for cmp_luasnip]], true)
try_loadstring("\27LJ\2\nG\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\3�-\0\0\0009\0\1\0B\0\1\1K\0\1\0\0�\vexpand\23expand_or_jumpableC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2\1\0B\0\2\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0�\tjump\rjumpableC\0\0\3\1\2\0\v-\0\0\0009\0\0\0)\2��B\0\2\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0)\2��B\0\2\1K\0\1\0\0�\tjump\rjumpableM\0\0\3\1\2\0\n-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0)\2\1\0B\0\2\1K\0\1\0\0�\18change_choice\18choice_activeM\0\0\3\1\2\0\n-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0)\2��B\0\2\1K\0\1\0\0�\18change_choice\18choice_active�\4\1\0\n\0\"\0@6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0B\1\2\0019\1\5\0009\1\6\0015\3\a\0004\4\0\b6\5\0\0'\a\b\0B\5\2\0029\5\t\0055\6\r\0005\a\v\0004\b\3\0005\t\n\0>\t\1\b=\b\f\a=\a\14\6<\6\5\4=\4\15\3B\1\2\0016\1\16\0009\1\17\0019\1\18\0015\3\19\0'\4\20\0003\5\21\0B\1\4\0016\1\16\0009\1\17\0019\1\18\0015\3\22\0'\4\23\0003\5\24\0B\1\4\0016\1\16\0009\1\17\0019\1\18\0015\3\25\0'\4\26\0003\5\27\0B\1\4\0016\1\16\0009\1\17\0019\1\18\0015\3\28\0'\4\29\0003\5\30\0B\1\4\0016\1\16\0009\1\17\0019\1\18\0015\3\31\0'\4 \0003\5!\0B\1\4\0012\0\0�K\0\1\0\0\n<a-h>\1\3\0\0\6i\6s\0\n<c-c>\1\3\0\0\6i\6s\0\n<c-k>\1\3\0\0\6i\6s\0\n<c-j>\1\3\0\0\6i\6s\0\n<a-p>\1\3\0\0\6i\6s\bset\vkeymap\bvim\rext_opts\vactive\1\0\0\14virt_text\1\0\0\1\3\0\0\b●\18GruvboxOrange\15choiceNode\23luasnip.util.types\1\0\3\17updateevents\29TextChanged,TextChangedI\fhistory\2\24enable_autosnippets\2\15set_config\vconfig\1\0\1\npaths\29~/.config/nvim/snippets/\tload\29luasnip.loaders.from_lua\fluasnip\frequire\0", "config", "cmp_luasnip")
time([[Config for cmp_luasnip]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n�\6\0\0\a\0*\0C6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0034\4\3\0005\5\21\0005\6\20\0=\6\22\0055\6\23\0=\6\24\5>\5\1\4=\4\25\0034\4\3\0005\5\26\0>\5\1\4=\4\27\0034\4\0\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \3=\3!\0025\3\"\0004\4\0\0=\4\19\0034\4\0\0=\4\25\0035\4#\0=\4\27\0035\4$\0=\4\28\0034\4\0\0=\4\30\0034\4\0\0=\4 \3=\3%\0024\3\0\0=\3&\0024\3\0\0=\3\n\0024\3\0\0=\3'\0025\3(\0=\3)\2B\0\2\1K\0\1\0\15extensions\1\2\0\0\rfugitive\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rfiletype\14lualine_y\1\2\0\0\5\14lualine_x\14lualine_c\1\2\1\0\rfilename\tpath\3\1\14lualine_b\fsources\1\2\0\0\20nvim_diagnostic\fsymbols\1\2\0\0\16diagnostics\1\0\4\nerror\t \thint\t \tinfo\t \twarn\t \14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\ftabline\3�\a\vwinbar\3�\a\15statusline\3�\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\nright\b\tleft\b\25component_separators\1\0\2\nright\b\tleft\b\1\0\4\ntheme\tauto\18icons_enabled\2\17globalstatus\1\25always_divide_middle\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\aui\1\0\0\nicons\1\0\0\1\0\3\24package_uninstalled\b✗\20package_pending\b➜\22package_installed\b✓\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: template-string.nvim
time([[Config for template-string.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\19restore_quotes\1\0\2\bjsx\6\"\vnormal\6'\14filetypes\1\0\2\27remove_template_string\1\17jsx_brackets\2\1\6\0\0\15typescript\15javascript\20typescriptreact\20javascriptreact\vpython\nsetup\20template-string\frequire\0", "config", "template-string.nvim")
time([[Config for template-string.nvim]], false)
-- Config for: vim-closetag
time([[Config for vim-closetag]], true)
try_loadstring("\27LJ\2\ny\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Zlet g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.ejs,*.js,*.rs,*.jsp,*.xml'\bcmd\bvim\0", "config", "vim-closetag")
time([[Config for vim-closetag]], false)
-- Config for: vim-bookmarks
time([[Config for vim-bookmarks]], true)
try_loadstring("\27LJ\2\n�\3\0\0\5\0\16\0%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0B\0\4\0016\0\0\0009\0\5\0009\0\6\0'\2\a\0'\3\n\0'\4\v\0B\0\4\0016\0\0\0009\0\5\0009\0\6\0'\2\a\0'\3\f\0'\4\r\0B\0\4\0016\0\0\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0B\0\4\1K\0\1\0N<cmd>lua require('telescope').extensions.vim_bookmarks.current_file()<cr>\amnE<cmd>lua require('telescope').extensions.vim_bookmarks.all()<cr>\ama\30<cmd>BookmarkClearAll<cr>\amx\28<cmd>BookmarkToggle<cr>\amm\6n\bset\vkeymap\29bookmark_highlight_lines\b♥\18bookmark_sign\6g\bvim\0", "config", "vim-bookmarks")
time([[Config for vim-bookmarks]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\5\0\0\rneo-tree\19neo-tree-popup\vnotify\rquickfix\1\0\3\19autoselect_one\2\23other_win_hl_color\f#f3a14e\20include_current\1\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: everforest
time([[Config for everforest]], true)
try_loadstring("\27LJ\2\n�\3\0\0\4\0\r\0#6\0\0\0009\0\1\0\18\1\0\0'\3\2\0B\1\2\0016\1\0\0009\1\3\1'\2\5\0=\2\4\0016\1\0\0009\1\3\1)\2\1\0=\2\6\0016\1\0\0009\1\3\1)\2\1\0=\2\a\0016\1\0\0009\1\3\1)\2\0\0=\2\b\0016\1\0\0009\1\3\1)\2\1\0=\2\t\1\18\1\0\0'\3\n\0B\1\2\1\18\1\0\0'\3\v\0B\1\2\1\18\1\0\0'\3\f\0B\1\2\1K\0\1\0\27colorscheme everforest\22set termguicolors\24set background=dark&everforest_transparent_background&everforest_disable_italic_comment\29everforest_enable_italic)everforest_diagnostic_line_highlight\tsoft\26everforest_background\6g\14syntax on\bcmd\bvim\0", "config", "everforest")
time([[Config for everforest]], false)
-- Config for: vim-svelte
time([[Config for vim-svelte]], true)
try_loadstring("\27LJ\2\nA\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\15typescript\25svelte_preprocessors\6g\bvim\0", "config", "vim-svelte")
time([[Config for vim-svelte]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n�\17\0\0\a\0008\0M6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\19\0005\5\18\0=\5\20\4=\4\21\3=\3\22\0025\3\23\0005\4\24\0=\4\25\0035\4\27\0005\5\26\0=\5\28\0045\5\29\0005\6\30\0=\6\31\5=\5 \4=\4!\3=\3\"\0024\3\0\0=\3#\0025\3(\0005\4$\0004\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\4=\4)\0036\4*\0=\4+\0035\4-\0005\5,\0=\5!\4=\4\"\3=\3.\0025\3/\0005\0041\0005\0050\0=\5!\4=\4\"\3=\0032\0025\0035\0005\0043\0005\0054\0=\5!\4=\4\"\3=\3\21\2B\0\2\0016\0\0\0009\0\1\0'\0026\0B\0\2\0016\0\0\0009\0\1\0'\0027\0B\0\2\1K\0\1\0'nnoremap <c-t> :Neotree toggle<cr>'nnoremap <c-f> :Neotree reveal<cr>\1\0\0\1\0\a\agu\21git_unstage_file\agc\15git_commit\6A\16git_add_all\agp\rgit_push\agr\20git_revert_file\agg\24git_commit_and_push\aga\17git_add_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\abd\18buffer_delete\6.\rset_root\t<bs>\16navigate_up\1\0\3\24follow_current_file\2\18show_unloaded\2\21group_empty_dirs\2\15filesystem\1\0\0\1\0\t\6f\21filter_on_submit\a]g\22next_git_modified\6/\17fuzzy_finder\a[g\22prev_git_modified\n<c-x>\17clear_filter\6H\18toggle_hidden\6D\27fuzzy_finder_directory\6C\rset_root\6U\16navigate_up\27use_libuv_file_watcher\btru\19filtered_items\1\0\3\21group_empty_dirs\1\26hijack_netrw_behavior\17open_current\24follow_current_file\2\15never_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\1\18hide_dotfiles\1\fvisible\1\18nesting_rules\vwindow\rmappings\6a\vconfig\1\0\1\14show_path\tnone\1\2\0\0\badd\f<space>\1\0\15\6K\18add_directory\18<2-LeftMouse>\topen\6m\21cut_to_clipboard\6c\22copy_to_clipboard\6R\frefresh\6d\vdelete\6o\topen\6z\15close_node\6s\16open_vsplit\6S\15open_split\t<cr>\topen\6q\17close_window\6?\14show_help\6r\vrename\6p\25paste_from_clipboard\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\rposition\tleft\nwidth\3\30\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\frenamed\b\rmodified\6M\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\runstaged\b\fignored\b\14untracked\b\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\18folder_closed\b\fdefault\6*\17folder_empty\bﰊ\14highlight\20NeoTreeFileIcon\16folder_open\b\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\14highlight\24NeoTreeIndentMarker\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\1\22enable_git_status\1\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: package-info.nvim
time([[Config for package-info.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\a\0\14\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0005\2\6\0'\3\a\0006\4\0\0'\6\1\0B\4\2\0029\4\b\0045\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0005\2\n\0'\3\v\0006\4\0\0'\6\1\0B\4\2\0029\4\f\0045\5\r\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\thide\15<LEADER>nc\1\2\0\0\6n\1\0\2\fnoremap\2\vsilent\2\tshow\15<LEADER>ns\1\2\0\0\6n\bset\vkeymap\bvim\nsetup\17package-info\frequire\0", "config", "package-info.nvim")
time([[Config for package-info.nvim]], false)
-- Config for: flutter-tools.nvim
time([[Config for flutter-tools.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18flutter-tools\frequire\0", "config", "flutter-tools.nvim")
time([[Config for flutter-tools.nvim]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\f\0\18\1\0276\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0009\6\t\0005\b\n\0005\t\v\0=\t\f\b9\t\r\0B\t\1\2=\t\14\b5\t\15\0009\n\16\0B\n\1\0?\n\0\0=\t\17\bB\6\2\0A\4\0\0A\1\1\1K\0\1\0\tleft\23popupmenu_devicons\1\2\0\0\6 \16highlighter\22basic_highlighter\15highlights\1\0\1\vborder\vNormal\1\0\2\vborder\frounded\rpumblend\3\20\27popupmenu_border_theme\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\3\0\0\6/\6?\1\0\4\rnext_key\n<C-j>\17previous_key\n<C-k>\15reject_key\n<C-h>\15accept_key\n<C-l>\nsetup\vwilder\frequire\5����\4\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)

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
