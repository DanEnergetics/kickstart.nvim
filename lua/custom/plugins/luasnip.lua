-- luasnip snippets engine
return {
  'L3MON4D3/LuaSnip',
  dependencies = {
    {
      'rafamadriz/friendly-snippets',
    },
  },
  config = function()
    local ls = require 'luasnip'
    local s = ls.snippet
    local t = ls.text_node
    ls.setup {
      region_check_events = 'InsertEnter',
    }
    ls.config.set_config {
      history = true, -- keep around last snippet local to jump back
      enable_autosnippets = true,
      store_selection_keys = '<Tab>',
    }
    require('luasnip.loaders.from_vscode').lazy_load()
    require('luasnip.loaders.from_lua').load { paths = { './lua/snippets/' } }
  end,
}
