-- Este archivo define variables globales utilizadas en todo el proyecto.

local opt = vim.opt
local cmd = vim.cmd
local g   = vim.g
local a   = vim.api
local key = vim.keymap
local lsp = vim.lsp
local vim   = vim
local diagnostics = vim.diagnostics

return {
  opt = opt,
  cmd = cmd,
  g   = g,
  a   = a,
  key = key,
  lsp = lsp,
  vim   = vim,
  diagnostics = diagnostics
}
