-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- require("fzf-lua").setup({
--   files = {
--     -- better to keep -E (exclude) separately if you want multiple ignores
--     fd_opts = "--hidden --no-ignore --exclude node_modules --exclude .git",
--   },
-- })

opts = function()
  local dashboard = require("alpha.themes.dashboard")
  local logo = [[
       ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
       ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z    
       ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z       
       ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z         
       ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
       ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝fasdfasfasd
  ]]

  dashboard.section.header.val = vim.split(logo, "\n")
  -- stylua: ignore
  dashboard.section.buttons.val = {
    dashboard.button("f", " " .. " Find file",       "<cmd> lua LazyVim.pick()() <cr>"),
    dashboard.button("n", " " .. " New file",        [[<cmd> ene <BAR> startinsert <cr>]]),
    dashboard.button("r", " " .. " Recent files",    [[<cmd> lua LazyVim.pick("oldfiles")() <cr>]]),
    dashboard.button("g", " " .. " Find text",       [[<cmd> lua LazyVim.pick("live_grep")() <cr>]]),
    dashboard.button("c", " " .. " Config",          "<cmd> lua LazyVim.pick.config_files()() <cr>"),
    dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
    dashboard.button("x", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
    dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
    dashboard.button("q", " " .. " Quit",            "<cmd> qa <cr>"),
  }
  for _, button in ipairs(dashboard.section.buttons.val) do
    button.opts.hl = "AlphaButtons"
    button.opts.hl_shortcut = "AlphaShortcut"
  end
  dashboard.section.header.opts.hl = "AlphaHeader"
  dashboard.section.buttons.opts.hl = "AlphaButtons"
  dashboard.section.footer.opts.hl = "AlphaFooter"
  dashboard.opts.layout[1].val = 8
  return dashboard
end
