{...}: {
  globals.mapleader = " ";
  globals.maplocalleader = {
    __raw = "vim.api.nvim_replace_termcodes('<BS>', false, false, true)";
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<ESC>";
      action = ":noh<CR>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<PageUp>";
      action = "<C-u>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<PageDown>";
      action = "<C-d>";
      options = {
        silent = true;
      };
    }

    {
      mode = ["n"];
      key = "<C-Del>";
      action = "zz";
      options = {
        silent = true;
      };
    }
  ];
}
