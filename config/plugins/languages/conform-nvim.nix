{
  pkgs,
  lib,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save.lsp_format = "prefer";
      default_format_opts.lsp_format = "prefer";
      formatters_by_ft = {
        javascript = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        typescript = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        html = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        css = {
          __unkeyed-1 = "prettierd";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        python = ["black"];
        rust = {
          __unkeyed-1 = "rustfmt";
          stop_after_first = true;
        };
        "*" = [
          "trim_whitespace"
          "squeeze_blanks"
          "trim_newlines"
        ];
        "_" = [
        ];
      };
      formatters = {
        biome = {
          command = lib.getExe pkgs.biome;
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
