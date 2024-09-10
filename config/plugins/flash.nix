{
  config,
  lib,
  ...
}: {
  plugins.flash = {
    enable = true;
    settings = {
      label = {
        after = false;
        before = true;
        rainbow.enabled = true;
      };
      remote_op = {
        motion = true;
        restore = true;
      };
    };
  };

  keymaps =
    [
      {
        mode = ["n" "x" "o"];
        key = "s";
        action.__raw = "function() require('flash').jump() end";
        options.desc = "";
      }
      {
        mode = "o";
        key = "r";
        action.__raw = "function() require('flash').remote() end";
        options.desc = "";
      }
    ]
    ++ lib.optionals config.plugins.treesitter.enable [
      {
        mode = ["n" "x" "o"];
        key = "S";
        action.__raw = "function() require('flash').treesitter() end";
        options.desc = "";
      }
      {
        mode = ["o" "x"];
        key = "R";
        action.__raw = "function() require('flash').treesitter_search() end";
        options.desc = "";
      }
    ];
}
