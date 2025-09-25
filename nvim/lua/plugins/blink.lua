-- Autocompletion

return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    opts = {
        keymap = {
            preset = 'default',
            ['<Tab>'] = { 'accept' }
        },
        appearance = {
            nerd_font_variant = 'mono'
        },

        fuzzy = { implementation = "prefer_rust_with_warning" }
    },
}
