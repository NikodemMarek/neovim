{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        ensure_installed = "all";

        folding = true;
        indent.enable = true;

        incremental_selection = {
          enable = true;
          keymaps = {
            initSelection = "<c-space>";
            nodeIncremental = "<c-space>";
            nodeDecremental = "<c-backspace>";
            scopeIncremental = "<c-s>";
          };
        };
      };
    };

    treesitter-context.enable = true;
  };
}
