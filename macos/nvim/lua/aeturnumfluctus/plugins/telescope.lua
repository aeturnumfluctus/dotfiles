return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<C-p>", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy fnid files in Git repo" })
    keymap.set("n", "<Leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Search" })
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
    --     { "<Leader>fa", function() builtin("autocommands") end, desc = "Autocommands" },
    --     { "<Leader>fc", function() builtin("commands") end, desc = "Commands" },
    --     { "<Leader>fh", function() builtin("help_tags") end, desc = "Help" },
    --     { "<Leader>fl", function() builtin("loclist") end, desc = "Location list" },
    --     { "<Leader>fq", function() builtin("quickfix") end, desc = "Quickfix list" },
  end,
}
