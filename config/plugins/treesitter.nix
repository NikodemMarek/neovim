{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        ensure_installed = "all";

        folding = true;
        indent.enable = true;
        highlight.enable = true;

        incremental_selection = {
          enable = true;
          keymaps = {
            init_selection = "<c-space>";
            node_incremental = "<c-space>";
            node_decremental = "<c-backspace>";
            scope_incremental = "<c-s>";
          };
        };
      };
    };

    treesitter-context.enable = true;
  };
}
