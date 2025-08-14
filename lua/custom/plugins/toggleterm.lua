return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      direction = 'float',
    }

    -- Keymap to start toggleterm with lazygit
    vim.keymap.set('n', '<leader>`', function()
      local Terminal = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new {
        cmd = 'lazygit',
        close_on_exit = true,
      }
      lazygit:toggle()
    end)
  end,
}
