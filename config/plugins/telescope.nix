{
  plugins = {
    telescope = {
      enable = true;

      settings = {
        vimgrep_arguments = [
          "rg"
          "--color=never"
          "--no-heading"
          "--with-filename"
          "--line-number"
          "--column"
          "--smart-case"
          "--fixed-strings"
        ];
      };

      extensions = {
        fzf-native.enable = true;
        media-files.enable = true;
        frecency.enable = true;
      };
    };
  };

  keymaps = [
    # Search in buffer
    {
      mode = "n";
      key = "<leader>sg";
      action = "<cmd>Telescope current_buffer_fuzzy_find<cr>";
      options.desc = "Search in buffer";
    }

    # Open
    {
      mode = "n";
      key = "<leader><space>";
      action = "<cmd>Telescope buffers<cr>";
      options.desc = "Open buffers";
    }
    {
      mode = "n";
      key = "<leader>sj";
      action = "<cmd>Telescope jumplist<cr>";
      options.desc = "Open jumplist";
    }

    # Search
    {
      mode = "n";
      key = "<leader>sf";
      action = "<cmd>Telescope find_files<cr>";
      options.desc = "Files";
    }
    {
      mode = "n";
      key = "<leader>ss";
      action = "<cmd>Telescope live_grep<cr>";
      options.desc = "Grep";
    }
    {
      mode = "n";
      key = "<leader>sw";
      action = "<cmd>Telescope grep_string<cr>";
      options.desc = "Current word";
    }

    # Diagnostics
    {
      mode = "n";
      key = "gx";
      action.__raw = "vim.diagnostic.open_float";
      options.desc = "Open diagnostic under cursor";
    }
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>Telescope diagnostics<cr>";
      options.desc = "Diagnostics";
    }

    # Help
    {
      mode = "n";
      key = "<leader>sh";
      action = "<cmd>Telescope help_tags<cr>";
      options.desc = "Help";
    }
    {
      mode = "n";
      key = "<leader>sp";
      action = "<cmd>Telescope keymaps<cr>";
      options.desc = "Keymaps";
    }

    # Repeat last search
    {
      mode = "n";
      key = "<leader>sr";
      action = "<cmd>Telescope resume<cr>";
      options.desc = "Repeat last search";
    }
  ];
}
