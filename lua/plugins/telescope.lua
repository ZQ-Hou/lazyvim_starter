return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- vim.keymap.set("n", "<leader>/", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
    -- Override the Live Grep keymap with Live Grep Args 
    {
      "<leader>/",
      function() require("telescope").extensions.live_grep_args.live_grep_args() end,
      -- function() require("telescope").extensions.live_grep_args.live_grep_args({ cwd = require("lazy.core.config").options.root }) end,
      desc = "Live Grep Args (cwd)",
    },
  },

  -- Add `telescope-live-grep-args.nvim` as `telescope.nvim` dependency
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim" ,
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },

  config = function ()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        -- path display in result window
        path_display = {
          -- set path display customed shorten format
          shorten = { len = 20, exclude = {1, -1} },
          -- "shorten", -- set shorten format
          -- "smart", -- set smart format
        },

        -- display path on top of the result window
        dynamic_preview_title = true,

        -- full screen
        layout_config = {
          width = { padding = 0 },
          height= { padding = 0 },
        },
      },

    })

    -- then load the extension
    telescope.load_extension("live_grep_args")
  end
}
