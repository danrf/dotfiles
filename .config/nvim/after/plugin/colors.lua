function Colorize()
    require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        show_end_of_buffer = false, -- show the '~' characters after the end of buffers
        term_colors = true,
        no_italic = true, -- Force no italic
        no_bold = true, -- Force no bold
    })

    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
end

function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='grey', bold=false })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='grey', bold=false })
end

Colorize()
LineNumberColors()

