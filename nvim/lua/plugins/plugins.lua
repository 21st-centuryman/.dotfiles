return {
  -- For splitting windows
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup()
    end,
  },
  -- Mardowwn preview
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  -- LaTex preview
  {
    "lervag/vimtex",
    --vimtex_view_method = "sioyek",
  },
  -- Wrapping
  {
    "andrewferrier/wrapping.nvim",
    config = function()
      require("wrapping").setup()
    end,
    opts = {},
  },
  -- Obsidian
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = false,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-treesitter",
    },
    opts = {
      workspaces = {
        {
          name = "Projects",
          path = "~/Documents/notes/1. Projects/",
        },
        {
          name = "Areas",
          path = "~/Documents/notes/2. Areas/",
        },
        {
          name = "Resources",
          path = "~/Documents/notes/3. Resources/",
        },
        {
          name = "Archives",
          path = "~/Documents/notes/4. Archives/",
        },
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
    },
  },
}
