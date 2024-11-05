{
  plugins = {
    lualine = {
      enable = true;
      settings = {
        options = {
          globalstatus = true;
          component_separators = {
            left = "";
            right = "";
          };
        };

        sections = {
          lualine_x = ["encoding" "filetype"];
          lualine_z = ["searchcount" "selectioncount" "location"];
        };
      };
    };
  };
}
