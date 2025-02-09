return {
  'andweeb/presence.nvim',
  event = 'VeryLazy',
  config = function()
    require('presence'):setup({
      auto_update = true,
      neovim_image_text = "Neovim",
      main_image = "neovim",
      -- Add other configurations as needed
    })
  end,
}
