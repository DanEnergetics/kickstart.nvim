local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node

return {
  s('trig', {
    t 'hello, world!',
  }),
  s('bla', {
    t 'blia bla blub',
  }),
}
