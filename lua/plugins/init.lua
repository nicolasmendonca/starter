return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "smoka7/hop.nvim",
    config = function()
      local hop = require('hop')
      hop.setup({
        keys = 'htnsueoaidgcrlypmbkjvx',
        multi_windows = true,
        uppercase_labels = true,
      })
      
      -- Set up keymapping for web-like navigation
      vim.keymap.set({'n', 'x', 'o'}, '<leader>fj', function()
        hop.hint_words()
      end, {silent = true, desc = 'Hop to word'})
    end,
    keys = {
      {"<leader>fj", mode = {"n", "x", "o"}, desc = "Hop to word"}
    },
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "typescript", "javascript", "tsx", "svelte"
  		},
  		highlight = {
  			enable = true,
  		},
  		indent = {
  			enable = true,
  		},
  		fold = {
  			enable = true
  		},
  	},
  }
}
