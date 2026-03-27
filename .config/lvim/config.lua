lvim.transparent_window = false
vim.opt.number = true
lvim.colorscheme = "pywal"
vim.opt.termguicolors = true
vim.shiftwidth = 8
vim.opt.softtabstop = 8
lvim.keys.normal_mode["<leader>pw"] = ":colorscheme pywal<cr>"
lvim.builtin.lualine.style = "lvim"

lvim.plugins = {
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        "*",
      })
    end
  },
  { "AlphaTechnolog/pywal.nvim", name = "pywal" },
}

-- Refresh colors when the window gains focus
vim.api.nvim_create_autocmd("FocusGained", {
    pattern = "*",
    callback = function()
        -- Reload the colorscheme
        vim.cmd("colorscheme " .. lvim.colorscheme)
        -- If you use transparency, re-apply it here
        vim.api.nvim_set_hl(0, "Normal", { bg = "none", ctermbg = "none" })
    end,
})

lvim.builtin.treesitter.indent = {
  enable = true,
  disable = { "hyprlang" }
}
