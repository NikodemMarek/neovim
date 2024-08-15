{pkgs, ...}: {
  # home.packages = with pkgs; [
  #   vscode-extensions.vadimcn.vscode-lldb.adapter
  # ]; # TODO: Resolve this somehow

  plugins = {
    rustaceanvim = {
      enable = true;
      settings.server.default_settings = {
        cargo = {
          buildScripts = {
            enable = true;
          };
        };
        procMacro = {
          enable = true;
        };
      };
    };
  };
}
