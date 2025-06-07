-- return {
--   -- {
--   --   "folke/tokyonight.nvim",
--   --   lazy = true,
--   --   opts = { style = "night" },
--   -- },
--
--   -- add gruvbox https://github.com/ellisonleao/gruvbox.nvim
--   {
--     "ellisonleao/gruvbox.nvim",
--   },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = { "gruvbox" },
--     },
--   },
-- }
--
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        -- you can enable transparent backgrounds like this:
        -- transparent = true,
        styles = {
          transparency = true,
        },
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
}
