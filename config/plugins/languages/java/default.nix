{pkgs, ...}: {
  plugins.java = {
    enable = true;

    settings = {
      jdtls = pkgs.jdt-language-server;
    };
  };
}
