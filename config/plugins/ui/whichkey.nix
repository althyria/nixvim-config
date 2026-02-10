{...}: {
  plugins.which-key = {
    enable = true;
    settings = {
      preset = "modern";
      icons = {
        mappings = false;
      };
    };
  };

  # Prefixes, No operation.
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>g";
      action = "<Nop>";
      options = {
        desc = "+git";
      };
    }

    {
      mode = ["n"];
      key = "<leader>gl";
      action = "<Nop>";
      options = {
        desc = "+list";
      };
    }

    {
      mode = ["n"];
      key = "<leader>W";
      action = "<Nop>";
      options = {
        desc = "+wiki";
      };
    }
  ];
}
