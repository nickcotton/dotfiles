return {
  {
    'vuki656/package-info.nvim',
    ft = 'json',
    depenencies = { 'MunifTanjim/nui.nvim' },
    config = function()
      require('package-info').setup {
        autostart = false,
        colors = {
          outdated = '#db4b4b',
        },
        hide_up_to_date = true,
      }

      local set_keymap = vim.api.nvim_set_keymap

      -- package-info keymaps
      set_keymap('n', '<leader>cpt', "<cmd>lua require('package-info').toggle()<cr>", { silent = true, noremap = true, desc = 'Toggle' })
      set_keymap('n', '<leader>cpd', "<cmd>lua require('package-info').delete()<cr>", { silent = true, noremap = true, desc = 'Delete package' })
      set_keymap('n', '<leader>cpu', "<cmd>lua require('package-info').update()<cr>", { silent = true, noremap = true, desc = 'Update package' })
      set_keymap('n', '<leader>cpi', "<cmd>lua require('package-info').install()<cr>", { silent = true, noremap = true, desc = 'Install package' })
      set_keymap(
        'n',
        '<leader>cpc',
        "<cmd>lua require('package-info').change_version()<cr>",
        { silent = true, noremap = true, desc = 'Change package version' }
      )
    end,
  },
}
