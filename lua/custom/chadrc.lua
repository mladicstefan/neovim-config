---@class ChadrcConfig
---@field init fun()?  "allow init hook"

local M = {}

M.ui = {
  theme = 'ayu_dark',
}

M.init = function ()
  require("custom.autocmds")
end

M.mappings = require("custom.configs.mappings")

M.plugins = "custom.plugins"

M.options = {
  user = function()
    vim.g.python3_host_prog = "/home/djamla/anaconda3/bin/python"
    vim.o.relativenumber = true
  end,
}

M.autocmds = require('custom.autocmds')
return M
