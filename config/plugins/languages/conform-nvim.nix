{
  pkgs,
  lib,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save.lsp_format = "first";
      default_format_opts.lsp_format = "first";
      formatters = {
        alejandra = {
          command = lib.getExe pkgs.alejandra;
        };
        black = {
          command = lib.getExe pkgs.black;
        };
        rustfmt = {
          command = lib.getExe pkgs.rustfmt;
        };
      };
    };
  };
}
