-- core/init.lua

local M = {}

-- Importar el módulo general y todos sus archivos
M.general = {
  settings = require('core.general.settings'),
  colors = require('core.general.colors'),
  keys = require('core.general.keys')
}

-- Exportar el módulo
return M