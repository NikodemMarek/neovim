{
  plugins.bufdelete.enable = true;

  keymaps = [
    # Delete buffer
    {
      mode = "n";
      key = "<leader>dd";
      action = "<cmd>Bdelete<cr>";
      options.desc = "Close buffer";
    }
  ];
}
