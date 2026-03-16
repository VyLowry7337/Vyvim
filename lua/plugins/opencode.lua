return {
        'sudo-tee/opencode.nvim',
        opts = {
            preferred_picker = 'snacks',
            preferred_completion = 'blink',
            default_global_keymaps = true,
            default_mode = 'plan',
            keymap_prefix = '<leader>o',

            keymap = {
                input_window = {
                    ['<S-m>'] = { 'switch_mode' },
                    ['<S-r>'] = { 'cycle_variant', mode = {'n'} },
                },
            },
            
            ui = {
                input_position = 'top',
                window_width = 0.30,
                question = { use_vim_ui_select = true },
                input = { text = { wrap = true } },

            },
        },
}
