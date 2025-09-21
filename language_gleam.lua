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
A useful website for visualizing the color palette:
    https://coolors.co/e1e1e6-676b6f-e58ac9-f77483-ffa94d-f7c95c-93ddfa
        Gleam color palette:
            https://coolors.co/ffd596-9ce7ff-ffddfa-f0eeff-c8ffa7-1e1e1e-8b8b8b-ffaff3-fdffab
    
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
    { pattern = "%f[%a]%u%w*",            type = "literal" }, -- Everything which starts from capital letter

    { pattern = "//.-\n",                 type = "comment" },
    { pattern = { '"', '"', '\\' },       type = "string" },

    { pattern = "0[bB][_01]+",            type = "number" }, -- 0b01
    { pattern = "0[oO][_0-7]+",           type = "number" }, -- 0o17
    { pattern = "0[xX][_%x]+",            type = "number" }, -- 0xFF
    { pattern = "%d+[_%d]*%d",            type = "number" }, -- 12_000
    { pattern = "%d+[_%d%.eE]*",          type = "number" }, -- 21_000.12
    
    { pattern = "%->",                    type = "normal" }, -- ->
    { pattern = "<%-",                    type = "normal" }, -- <-
    { pattern = "[%(%)]",                 type = "normal" }, -- ( )
    { pattern = "[%[%]]",                 type = "normal" }, -- [ ]
    { pattern = "[%{%}]",                 type = "normal" }, -- { }
    


--  comment out/uncomment related patterns
--     if you want your operators to be less/more colorful, 
    { pattern = "|>", type = "operator" },
    { pattern = "==", type = "operator" }, 
    { pattern = "<>", type = "operator" }, 
    { pattern = "%.%.", type = "operator" }, -- ..
    
    { pattern = "<<", type = "operator" },
    { pattern = ">>", type = "operator" },
    
    { pattern = "<=%.?", type = "operator"}, -- <= <=.
    { pattern = ">=%.?", type = "operator"}, -- >= >=.
    
    { pattern = "<%.?", type = "operator"}, -- < <.
    { pattern = ">%.?", type = "operator"}, -- > >.
    
    --{ pattern = "[%%]", type = "operator" }, -- %
    --{ pattern = "[%+%-/*]%.?", type = "operator" }, -- + - / * +. -. /. *.
    
    --{ pattern = "=", type = "operator" },
    
--  end of operators


    { pattern = "[%a_][%w_]*:",           type = "normal" },   -- map(over: , with:) <<first:bits, second:bits>>
    { pattern = "[%a_][%w_]*%f[(]",       type = "function" }, -- functions
    { pattern = "[%a_][%w_]*",            type = "normal" },   -- variables & constants
    { pattern = "@[%a_][%w_]*",           type = "keyword2" }, -- @deprecated
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
