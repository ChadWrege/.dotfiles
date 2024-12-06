return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<C-n>", "<cmd>Neotree toggle<cr>", desc = "NeoTree Toggle" },
    { "<C-m>", "<cmd>Neotree focus<cr>", desc = "Neotree Focus" }
  }
}
