{
  plugins = {
    which-key = {
      enable = true;
      settings.spec = [
        {
          __unkeyed-1 = "<leader>f";
          group = "File";
        }
        {
          __unkeyed-1 = "<leader>d";
          group = "Close";
          icon = {
            icon = "󰈆";
            color = "red";
          };
        }
        {
          __unkeyed-1 = "<leader>q";
          group = "Quit";
        }
        {
          __unkeyed-1 = "<leader>s";
          group = "Search";
        }
        {
          __unkeyed-1 = "<leader>u";
          group = "UI";
        }
        {
          __unkeyed-1 = "<leader>b";
          group = "Debugging";
        }
        {
          __unkeyed-1 = "<leader>a";
          group = "AI";
        }
        {
          __unkeyed-1 = "<leader>g";
          group = "Git";
        }
      ];
    };
  };
}
