-- lua/custom/plugins/harpoon.lua
return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon.setup {}

    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'
    -- Harpoon keybinds
    vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Add file to Harpoon' })
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Toggle Harpoon menu' })

    vim.keymap.set('n', '<leader>1', function()
      ui.nav_file(1)
    end, { desc = 'Go to Harpoon file 1', noremap = true })
    vim.keymap.set('n', '<leader>2', function()
      ui.nav_file(2)
    end, { desc = 'Go to Harpoon file 2', noremap = true })
    vim.keymap.set('n', '<leader>3', function()
      ui.nav_file(3)
    end, { desc = 'Go to Harpoon file 3', noremap = true })
    vim.keymap.set('n', '<leader>4', function()
      ui.nav_file(4)
    end, { desc = 'Go to Harpoon file 4', noremap = true })
  end,
}
