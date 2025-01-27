{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "model";
      src = pkgs.fetchFromGitHub {
        owner = "gsuuon";
        repo = "model.nvim";
        rev = "aac9525e0ce9fa074807f43f2537ad73b88010a5";
        hash = "sha256-fsXn/MGP9NAXBXmTlW9y/QUNqKkKSKOJhIfNGg/PZNg=";
      };
    })
  ];

  extraConfigLua = "require('model').setup({})";

  keymaps = [
    {
      mode = "n";
      key = "<leader>aa";
      action = "<cmd>Model openai:gpt4-code<cr>";
      options.desc = "Generate code with GPT-4";
    }
  ];
}
