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
          lualine_c = [
            {
              __unkeyed-1 = "filename";
              path = 1;
            }
          ];
          lualine_x = ["encoding" "filetype"];
          lualine_z = ["searchcount" "selectioncount" "location"];
        };
      };
    };
  };
}
