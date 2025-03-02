return {
    {
      "mrcjkb/rustaceanvim",
      ft = { "rust" }, -- optional: load only for Rust files
      config = function()
        -- You can add custom configurations here based on the plugin documentation.
        -- For instance, if rustaceanvim provides its own setup function, call it here.
        require("rustaceanvim").setup({})
      end,
    },
  }
  