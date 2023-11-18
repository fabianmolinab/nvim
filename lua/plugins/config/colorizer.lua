-- Plugin para colorear Hexadecimales
return {
  "norcalli/nvim-colorizer.lua",

  -- El plugun solo carga con estos archivos
  ft = { "html", "css", "js", "jsx", "ts", "tsx" },

  config = function()
    require 'colorizer'.setup({
      'css',
      'javascript',
      html = { mode = 'background' }
    }, { mode = 'foreground' })
  end
}
