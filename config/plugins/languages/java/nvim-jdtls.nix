{
  pkgs,
  lib,
  ...
}: let
  jdtlsDataPath =
    /*
    lua
    */
    ''os.getenv("HOME") .. "/.cache/jdtls/workspace/" .. vim.fn.fnamemodify(vim.fs.root(0, { "pom.xml", ".git", ".gradle", "gradlew" }), ":p:h:t")'';
in {
  plugins = {
    jdtls = {
      enable = true;
      settings = {
        cmd = [
          (lib.getExe pkgs.jdt-language-server)

          "--java-executable"
          "${pkgs.jdk}/bin/java"
          "-Declipse.application=org.eclipse.jdt.ls.core.id1"
          "-Dosgi.bundles.defaultStartLevel=4"
          "-Declipse.product=org.eclipse.jdt.ls.core.product"
          "-Dlog.protocol=true"
          "-Dlog.level=ALL"
          "-Xms1g"
          "--add-modules=ALL-SYSTEM"
          "--add-opens"
          "java.base/java.util=ALL-UNNAMED"
          "--add-opens"
          "java.base/java.lang=ALL-UNNAMED"
          "--jvm-arg=-javaagent:${pkgs.lombok}/share/java/lombok.jar"

          "-jar"
          "${pkgs.jdt-language-server}/share/java/jdtls/plugins/org.eclipse.equinox.launcher_1.6.700.v20231214-2017.jar"
          "-data"
          (lib.nixvim.mkRaw jdtlsDataPath)
        ];
        init_options.bundles = [
          ./com.microsoft.java.debug.plugin-0.53.2.jar
        ];
        java = {
          signatureHelp.enabled = true;
          sources.organizeImports = {
            allImports = true;
            starThreshold = 9999;
            staticStarThreshold = 9999;
          };
          configuration.runtimes = [
            {
              name = "JavaSE-23";
              path = pkgs.openjdk23;
            }
            {
              name = "JavaSE-21";
              path = pkgs.openjdk21;
            }
            {
              name = "JavaSE-17";
              path = pkgs.openjdk17;
            }
            {
              name = "JavaSE-11";
              path = pkgs.openjdk11;
            }
            {
              name = "JavaSE-8";
              path = pkgs.openjdk8;
            }
          ];
          format.settings = {
            url = ./google-style.xml;
            profile = "GoogleStyle";
          };
        };
      };
    };
    dap.configurations.java = [
      {
        name = "Debug (Launch) - Local";
        type = "java";
        request = "launch";
        javaExec = "java";
      }
      {
        name = "Debug (Attach) - Remote";
        type = "java";
        request = "attach";
        hostName = "127.0.0.1";
        port = 5005;
      }
    ];
  };
}
