{...}: {
  config.opts = {
    # General
    number = true;
    relativenumber = true;
    showmode = false;
    swapfile = false;
    clipboard = "unnamedplus";
    updatetime=100;
    undofile = true;
    splitright = true;

    # Tabs & Spaces
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    expandtab = true;

    # Useful for render-markdown
    conceallevel = 2;
    foldlevel = 99;

    # Using this config for sessionoptions is recommended:
    sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions";
  };
}
