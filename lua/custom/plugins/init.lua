-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'SirVer/ultisnips',
    event = { 'InsertEnter' },
    init = function()
      vim.g.UltiSnipsSnippetDirectories  = {'/home/danielmann/.config/nvim/UltiSnips'}
      vim.g.UltiSnipsExpandTrigger       = '<Tab>'    -- use Tab to expand snippets
      vim.g.UltiSnipsJumpForwardTrigger  = '<Tab>'    -- use Tab to move forward through tabstops
      vim.g.UltiSnipsJumpBackwardTrigger = '<S-Tab>'  -- use Shift-Tab to move backward through tabstops
    end
  },

  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here
      -- vim.g.vimtex_view_method 'zathura'
      -- vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_complete_enabled = 1
    end
  },

  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons'
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  }
}
