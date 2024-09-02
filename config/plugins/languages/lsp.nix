{
  plugins = {
    lsp = {
      enable = true;

      keymaps.lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";

        "<leader>lr" = "rename";
        "<leader>la" = "code_action";
        "<leader>ld" = "type_definition";
      };

      servers = {
        nixd.enable = true;

        tsserver.enable = true;
        eslint.enable = true;
        tailwindcss.enable = true;

        kotlin-language-server.enable = true;

        lemminx.enable = true;
        jsonls.enable = true;

        pylsp.enable = true;

        dockerls.enable = true;
      };
    };

    lsp-format.enable = true;
  };
}
