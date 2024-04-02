local tsu = require('nvim-treesitter.ts_utils')
local ts = vim.treesitter
local parser = ts.get_parser()
local tree = parser:parse()[1]
local lang = parser:lang()
local root = tree:root()

local qs = [[
(if_statement) @if
]]

local function get_table_keys(t)
  local keys = {}
  for k, _ in pairs(t) do
    table.insert(keys, k)
  end
  return keys
end

local queries = ts.query.parse(lang, qs)

for _, captures, _ in queries:iter_captures(root, 0) do
  print(captures)
end
