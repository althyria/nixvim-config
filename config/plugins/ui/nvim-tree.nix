{...}: {
  plugins.nvim-tree = {
    enable = true;

    # Configure nvim-tree
    settings = {
      # Set width of nvim-tree
      view = {
        width = 38;
      };

      # Hide dotfiles
      filters = {
        dotfiles = true;
      };

      # fix: nvim-tree / auto-session 
      sync_root_with_cwd = true;
      actions = {
        change_dir = {
          global = true;
        };
      }; 
      # https://github.com/zwhitchcox/auto-session-nvim-tree
    }; 
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>n";
      action = "<cmd>NvimTreeToggle<cr>";
      options = { 
        desc = "Toggle file explorer";
      };
    }

    {
      mode = ["n"];
      key = "<leader>e";
      action = "<cmd>NvimTreeFocus<cr>";
      options = {
        desc = "Focus file explorer";
      };
    }
  ];
}
