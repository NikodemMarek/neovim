{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "hbac";
      src = pkgs.fetchFromGitHub {
        owner = "axkirillov";
        repo = "hbac.nvim";
        rev = "30dcd055611f6ba6ec37aa2a1c038e211521bd39";
        hash = "sha256-Jd+KyoP2Ire3vBH8CzLpyWlYBWTH5k8VZAHOSsyaZ2g=";
      };
    })
  ];

  extraConfigLua = "require('hbac').setup({})";
}
