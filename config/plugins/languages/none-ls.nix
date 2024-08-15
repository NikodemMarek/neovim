{
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources = {
      code_actions = {
        statix.enable = true;
      };
      diagnostics = {
        statix.enable = true;
        ktlint.enable = true;
        pylint.enable = true;
      };
      formatting = {
        alejandra.enable = true;
        ktlint.enable = true;
        google_java_format = {
          enable = true;
          settings = {
            extra_args = ["--aosp" "-i" "2"];
          };
        };
        black.enable = true;
      };
    };
  };
}
