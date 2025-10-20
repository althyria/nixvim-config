{...}: {
  plugins.lsp = {
    enable = true; # Enable neovim's built-in LSP.
    inlayHints = true;

    # Configure our language servers
    servers = {
      # C/C++
      clangd = {
        enable = true;
      };
      # Clojure
      clojure_lsp = {
        enable = true;
      };
      # Haskell
      hls = {
        enable = true;
        installGhc = true;
      };
      # Lua
      lua_ls = {
        enable = true;
      };
      # Nix
      nil_ls = {
        enable = true;
      };
      # YAML
      yamlls = {
        enable = true;
      };
      # Python
      pyright = {
        enable = true;
      };
      # Rust
      rust_analyzer = {
        enable = true;
        # dependencies
        installCargo = true;
        installRustc = true;
      };
      # TypeScript/JavaScript
      ts_ls = {
        enable = true;
      };
      eslint = {
        enable = true;
      };
    };

    keymaps = {
      # nvim-lsp keymaps should be silent
      silent = true;
      # Configure keymaps for our diagnostics.
      diagnostic = {
        "<C-W>d" = "open_float"; # Show diagnostics in floating window.
      };
      # Configure keymaps for our lspbuf.
      lspBuf = {
        K = "hover"; # Displays hover information¹
        gr = "references"; # Lists all the references¹
        gd = "definition"; # Jumps to the definition¹
        gD = "declaration"; # Jumps to the declaration¹
        gi = "implementation"; # Lists all the implementations¹
        gt = "type_definition"; # Jumps to the definition of the type¹
        # ¹ for the symbol under the cursor

        # Renames all references to the symbol under the cursor. 
        "<leader>r" = {
          action = "rename";
          desc = "Rename reference";
        };
      };

      # Extra keymaps to register when an LSP is attached
      extra = [
        {
          mode = ["n"];
          key = "<leader>l";
          action = "<NOP>";
          options = {
            silent = true;
            desc = "+lsp";
          };
        }

        {
          mode = ["n"];
          key = "<leader>lc";
          action = "<cmd>LspStop<cr>";
          options = {
            silent = true;
            desc = "Stop server";
          };
        }

        {
          mode = ["n"];
          key = "<leader>ls";
          action = "<cmd>LspStart<cr>";
          options = {
            silent = true;
            desc = "Start server";
          };
        }

        {
          mode = ["n"];
          key = "<leader>lr";
          action = "<cmd>LspRestart<cr>";
          options = {
            desc = "Restart server";
          };
        }

        {
          mode = ["n"];
          key = "<leader>fd";
          action = {
            __raw = "require('telescope.builtin').lsp_definitions";
          };
          options = {
            desc = "Find definitions";
          };
        }
      ];
    };
  };
}
