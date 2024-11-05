{
  plugins.neogit = {
    enable = true;
    settings = {
      commit_editor = {
        staged_diff_split_kind = "auto";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>Neogit<cr>";
      options.desc = "Open neogit";
    }
  ];
}
