-- mod-version:3
local syntax = require "core.syntax"

--[[
Here is the list of all pattern types which could be used in themes:

    normal
    symbol
    comment
    keyword
    keyword2
    number
    literal
    string
    operator
    function

Here you can see which colors are used for each pattern in your chosen theme:
    https://github.com/lite-xl/lite-xl/tree/master/data/colors
    https://github.com/lite-xl/lite-xl-colors/tree/master/colors

To change the color of a certain syntax, change its pattern type.

Example:
  { pattern = "pub", type = "normal" },
will change the color of the pub

You can see the color changes after:
1. ctrl+shift+p
     Core: Reload Module
       plugins.language_gleam
2. save current gleam file

If you want to understand how the Lua Patterns work, visit:
    https://gitspartv.github.io/lua-patterns/
]]

syntax.add {
  name = "Gleam",
  files = { "%.gleam$" },
  comment = "//",
  patterns = {
    { pattern = "%f[%a]%u%w*",           type = "literal" }, -- Everything which starts from capital letter
    { pattern = "//.-\n",                type = "comment" },
    { pattern = { '"', '"', '\\' },      type = "string" },
    { pattern = "0[bB][_01]+",           type = "number" },
    { pattern = "0[oO][_0-7]+",          type = "number" },
    { pattern = "0[xX][_%x]+",           type = "number" },
    { pattern = "-?%d+_%d",              type = "number" },
    { pattern = "-?%d+[%d%.eE]*f?",      type = "number" },
    { pattern = "-?%.?%d+f?",            type = "number" }, -- Maybe some number patterns are redundant
    { pattern = "[.%+%-=/%*%^%%<>!~|&]", type = "operator" },
    { pattern = "[%a_][%w_]*%f[(]",      type = "function" },
    { pattern = "[%a_][%w_]*",           type = "symbol" },
    { pattern = "@[%a_][%w_]*",          type = "operator" },
  },
  symbols = {
    ["echo"]   = "keyword",
    ["import"] = "keyword",
    ["const"]  = "keyword",
    ["fn"]     = "keyword",
    ["let"]    = "keyword",
    ["pub"]    = "keyword",
    ["type"]   = "keyword",
    ["case"]   = "keyword",
    ["if"]     = "keyword",
    ["use"]    = "keyword",
    ["opaque"] = "keyword",
    ["todo"]   = "keyword",
    ["as"]     = "keyword",
    ["panic"]  = "keyword",
    ["assert"] = "keyword",
  },
}
