local globals = require('globals')
local vim = globals.vim

local config = {
    cmd = {require("mason-registry").get_package("jdtls"):get_install_path() .. "/bin/jdtls"},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
