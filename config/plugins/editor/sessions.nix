{...}: {
  plugins.auto-session = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>fs";
      action = ":SessionSearch<cr>";
      options = {
        desc = "Find sessions";
        silent = true;
      };
    }
  ];
}
