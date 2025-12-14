{...}: {
  plugins.auto-session = {
    enable = true;

    # fix: nvim-tree / auto-session 
    settings = {
      log_level = "error";
      pre_save_cmds = [
        "NvimTreeClose"
      ];
      post_save_cmds = [
        "NvimTreeOpen"
      ];
      post_open_cmds = [
        "NvimTreeOpen"
      ];
      post_restore_cmds = [
        "NvimTreeOpen"
      ];
      cwd_change_handling = true;
    }; 
    # https://github.com/zwhitchcox/auto-session-nvim-tree
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
