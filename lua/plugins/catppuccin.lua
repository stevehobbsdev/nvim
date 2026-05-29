return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        default_integrations = true,
        integrations = {
          treesitter = true,
          telescope = { enabled = true },
        },
      })

      vim.cmd.colorscheme "catppuccin-nvim"
    end,
  },
}
