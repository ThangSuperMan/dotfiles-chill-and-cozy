return function()
  local filetypes = {
    'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript', 'markdown', 'java',
  }

  local treesitter = require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      use_languagetree = true
    },
    indent = {
      enable = true,
    },
   ensure_installed = {
     "prisma",
     "javascript",
     "typescript",
     "java",
     "dart",
     "lua",
     "tsx",
     "go",
     "org",
     "fish",
    },
    autotag = {
      enable = true,
      filetypes = filetypes,
    },
  }

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
end
