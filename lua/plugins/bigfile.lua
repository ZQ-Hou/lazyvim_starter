return {
  -- Disable some plugins for bigfile (> 2MiB by default)
  "LunarVim/bigfile.nvim",

  -- 默认配置
  -- require("bigfile").setup {
  --   filesize = 2,        -- 文件大小，以MiB为单位，插件会将文件大小四舍五入到最近的MiB
  --   pattern = { "*" },   -- 自动命令模式或函数，参阅<### 覆盖大文件检测>
  --   features = {         -- 禁用的功能
  --     "indent_blankline",
  --     "illuminate",
  --     "lsp",
  --     "treesitter",
  --     "syntax",
  --     "matchparen",
  --     "vimopts",
  --     "filetype",
  --   },
  -- }
}
