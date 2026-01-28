{...}:{
  plugins.neorg = {
    enable = true;

    # Settings for the Neorg plugin
    settings = {
      load = {
        # Load the core modules for Neorg
        "core.defaults" = {
          __empty = null;
        };

        # Display markup as icons, not text 
        "core.concealer" = {
          __empty = null;
        };

        # Handle collections of notes
        "core.dirman" = {
          config = {
            workspaces = {
              docs = "~/Documents";
            };
            default_workspace = "docs";
          };
        };

        # Treesitter integration
        "core.integrations.treesitter" = {
          config = {
            install_parsers = true;
            configure_parsers = true;
          };
        };

        # Enable completions with nvim-cmp
        "core.completion" = {
          config = {
            engine = "nvim-cmp";
          };
        };
        "core.integrations.nvim-cmp" = {
          __empty = null;
        };
      };
    };
  };
}
