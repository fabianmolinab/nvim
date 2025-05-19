return {
  "nvim-java/nvim-java",
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        setup = {
          jdtls = function()
            require("java").setup({
               root_markers = {
                 "settings.gradle",
                 "settings.gradle.kts",
                 "pom.xml",
                 "build.gradle",
                 "mvnw",
                 "gradlew",
                 "build.gradle",
                 "build.gradle.kts",
               },
            })
          end,
        },
      },
    },
  },
}
