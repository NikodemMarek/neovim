{
  plugins = {
    auto-session = {
      enable = true;
      settings = {
        auto_restore = true;
        auto_save = true;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>qd";
      action = "<cmd>SessionDelete<cr><cmd>qa!<cr>";
      options.desc = "Delete session and quit all";
    }
    {
      mode = "n";
      key = "<leader>us";
      action = "<cmd>SessionDelete<cr>";
      options.desc = "Delete session";
    }
  ];
}
