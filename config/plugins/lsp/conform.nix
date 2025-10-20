{
  lib,
  pkgs,
  ...
}: {
  plugins.conform-nvim = {
    enable = true;

    settings = {
      # Map of filetype to formatters.
      formatters_by_ft = {
        c = [
          "clang-format"
        ];
        lua = [
          "stylua"
        ];
        nix = [
          "alejandra"
        ];
        python = [
          "isort"
          "black"
        ];
        rust = [
          "rustfmt"
        ];
        javascript = [
          "prettier"
        ];
        css = [
          "prettier"
        ];
        html = [
          "prettier"
        ];
      };

      # Install our formatters
      formatters = {
        alejandra = {
          command = lib.getExe pkgs.alejandra;
        };
        clang-format = {
          command = lib.getExe' pkgs.clang-tools "clang-format";
        };
        stylua = {
          command = lib.getExe pkgs.stylua;
        };
        isort = {
          command = lib.getExe pkgs.isort;
        };
        black = {
          command = lib.getExe pkgs.black;
          prepend_args = [
            "--preview"
            "--enable-unstable-feature" "string_processing"
          ];
        };
        rustfmt = {
          command = lib.getExe pkgs.rustfmt;
        };
        prettier = {
          command = lib.getExe pkgs.prettierd;
        };
      };

      # Receive notificaton when a formatter errors.
      notifyOnError = true;
    };
  };

  # Keymaps for conform.nvim
  keymaps = [
    {
      mode = ["n"];
      key = "<leader>F";
      action.__raw = ''
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end
      '';
      options = {
        desc = "Format buffer";
      };
    }
  ];
}
