return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000, -- Приоритет для загрузки до других плагинов
    lazy = false,    -- Загружать сразу, чтобы не нарушать фон
    opts = {
      theme = "dragon", -- Включение варианта dragon
      background = {
        dark = "dragon",
      },
      colors = {
          theme = { all = { ui = { bg_gutter = 'none' }  }}
        }
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
}
