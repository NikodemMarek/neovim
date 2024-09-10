{
  plugins.noice = {
    enable = true;
    presets.bottom_search = true;
    views = {
      cmdline_popup = {
        position = {
          row = 9;
          col = "50%";
        };
        size = {
          width = 60;
          height = "auto";
        };
      };
      popupmenu = {
        relative = "editor";
        position = {
          row = 12;
          col = "50%";
        };
        size = {
          width = 60;
          height = 10;
        };
        border = {
          style = "rounded";
          padding = [0 1];
        };
        win_options = {
          winhighlight = {
            Normal = "Normal";
            FloatBorder = "DiagnosticInfo";
          };
        };
      };
    };
  };
}
