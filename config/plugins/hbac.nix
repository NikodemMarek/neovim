{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "hbac";
      src = pkgs.fetchFromGitHub {
        owner = "axkirillov";
        repo = "hbac.nvim";
        rev = "main";
        hash = "sha256-A+C9N7xorS7DV0w8N5TjyD7OvWdxUQ4PJaKW3kwkQS0=";
      };
    })
  ];

  extraConfigLua = "require('hbac').setup({})";
}
