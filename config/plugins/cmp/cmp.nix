{...}: {
  # Autocompletion plugin
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;

    # Options provided to the require('cmp').setup function.
    settings = {
      # Disable automatic popup; only open via <Tab>
      completion.autocomplete = false;

      # Highlight (preselect) the first item without inserting it
      completion.completeopt = "menu,menuone,noinsert";

      # The sources to use
      sources = [
        # Language Server Protocol
        { name = "nvim_lsp"; }      

        # Buffer Words
        { name = "buffer"; }       

        # Filesystem paths
        { name = "path"; }

        # Markdown
        { name = "render_markdown"; }

        # VimTex
        { name = "vimtex"; }
      ];

      # Key mappings for the completion menu.
      mapping = {
        # Open the completion menu (only mid word)
        "<Tab>" = /* lua */ ''
          function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              local col = vim.fn.col('.') - 1
              if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                fallback()
              else
                cmp.complete()
              end
            end
          end
        '';

        # Confirm selection
        "<CR>" = /* lua */ ''
          cmp.mapping.confirm({ select = true })
        '';

        # Select the next item in the menu
        "<Down>" = /* lua */ ''
          cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})
        '';

        # Select the prev item in the menu
        "<Up>" = /* lua */ ''
          cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})
        '';

        # Exit the completion menu
        "<esc>" = /* lua */ ''
          cmp.mapping.close()
        '';
      };
    };
  };
}
