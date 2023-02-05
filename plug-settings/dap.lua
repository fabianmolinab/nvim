
--local dap = require('dap')
-- Configuracion debuger  Javascript, Typescript y React Typescript 
require("dap").adapters.firefox = {
  type = "executable",
  command = "node",
  args = {
    require("mason-registry").get_package("firefox-debug-adapter"):get_install_path() .. "/dist/adapter.bundle.js",
  },
}

for _, language in ipairs({ "javascript", "javascriptreact", "typescript", "typescriptreact" }) do
  require("dap").configurations[language] = {
    {
      name = "Launch Firefox against localhost",
      request = "launch",
      type = "firefox",
      reAttach = true,
      url = "http://localhost:3000",
      webRoot = "${workspaceFolder}",
      console = "integratedTerminal",
    },
  }
end

-- Configuracion debuger Go
--dap.adapters.go = {
  --type = 'executable';
  --command = 'node';
   --args = {
    --require("mason-registry").get_package("go-debug-adapter"):get_install_path() .. "/dist/debugAdapter.js",
  --},
--}

--dap.configurations.go = {
  --{
    --type = 'go';
    --name = 'Debug';
    --request = 'launch';
    --showLog = false;
    --program = "${file}";
    --dlvToolPath = vim.fn.exepath('/usr/bin/dlv')  -- Adjust to where delve is installed
  --},
--}

require("dapui").setup()
--Debugger Go
require("dap-go").setup()
