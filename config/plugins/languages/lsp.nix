{
  pkgs,
  lib,
  config,
  ...
}: {
  plugins = {
    lsp = {
      enable = true;
      servers = {
        nixd = {
          enable = true;
          settings = {
            formatting.command = ["${lib.getExe pkgs.alejandra}"];
          };
        };

        ts_ls = {
          enable = true;
          onAttach.function = ''
            client.server_capabilities.documentFormattingProvider = false
          '';
        };
        eslint.enable = true;
        tailwindcss.enable = true;

        kotlin_language_server.enable = true;

        lemminx.enable = true;
        jsonls.enable = true;

        pylsp.enable = true;

        dockerls.enable = true;

        typst_lsp.enable = true;
      };
    };

    lsp-format.enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "K";
      action.__raw = "vim.lsp.buf.hover";
      options.desc = "Show documentation";
    }
    {
      mode = "n";
      key = "gr";
      action.__raw = "vim.lsp.buf.rename";
      options.desc = "Rename";
    }
    {
      mode = "n";
      key = "ga";
      action.__raw = "vim.lsp.buf.code_action";
      options.desc = "Code actions";
    }

    {
      mode = "n";
      key = "gD";
      action =
        if config.plugins.telescope.enable
        then "<cmd>Telescope lsp_references<cr>"
        else {__raw = "vim.lsp.buf.declaration";};
      options.desc = "Find references";
    }
    {
      mode = "n";
      key = "gd";
      action =
        if config.plugins.telescope.enable
        then "<cmd>Telescope lsp_definitions<cr>"
        else {__raw = "vim.lsp.buf.definition";};
      options.desc = "Find definitions";
    }
    {
      mode = "n";
      key = "gi";
      action =
        if config.plugins.telescope.enable
        then "<cmd>Telescope lsp_implementation<cr>"
        else {__raw = "vim.lsp.buf.implementation";};
      options.desc = "Find implementation";
    }
    {
      mode = "n";
      key = "gt";
      action =
        if config.plugins.telescope.enable
        then "<cmd>Telescope lsp_type_definition<cr>"
        else {__raw = "vim.lsp.buf.type_definition";};
      options.desc = "Find type definition";
    }
  ];
}
