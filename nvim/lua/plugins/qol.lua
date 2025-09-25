return {
    -- Auto closing parethesis, brackets, quotation marks, etc.
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
    },
    -- Autosave after modification
    {
        "Pocco81/auto-save.nvim",
        opts = {
            execution_message = {
                cleaning_interval = 1250
            }
        }
    }
}
