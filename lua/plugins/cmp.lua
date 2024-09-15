return {
  {
    -- add cmp-cmdline
    "hrsh7th/cmp-cmdline",

    config = function()
      local cmp = require("cmp")
      -- `/` cmdline setup.
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(":", {

        -- set Enter as confirm button
        mapping = cmp.mapping.preset.cmdline({
          ["<CR>"] = {
            c = cmp.mapping.confirm({ select = false }),
          },
        }),

        sources = cmp.config.sources({
          { name = "path" },
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
        matching = { disallow_symbol_nonprefix_matching = false },
      })
    end,
  },
}
