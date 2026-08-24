{...}: {
  imports = [
    # General Configuration
    ./autocmds.nix
    ./options.nix

    # Keymaps
    ./keymaps/general.nix
    ./keymaps/buffers.nix
    ./keymaps/windows.nix
    ./keymaps/find.nix
    ./keymaps/git.nix

    # Themes & Appearance
    ./plugins/themes/default.nix

    # Plugin Collections
    ./plugins/collections/mini.nix
    ./plugins/collections/snacks.nix

    # LSP and Formatting
    ./plugins/lsp/conform.nix
    ./plugins/lsp/lsp.nix

    # Completion & AI Assistancee
    ./plugins/cmp/cmp.nix

    # Editor Enhancements
    ./plugins/editor/commentary.nix
    ./plugins/editor/harpoon.nix
    ./plugins/editor/maximize.nix
    ./plugins/editor/sessions.nix
    ./plugins/editor/surround.nix
    ./plugins/editor/treesitter.nix

    # User Interface Plugins
    ./plugins/ui/lualine.nix
    ./plugins/ui/web-devicons.nix
    ./plugins/ui/whichkey.nix

    # Git Integration
    ./plugins/git/fugitive.nix
    ./plugins/git/gitsigns.nix

    # Markdown, Notes & Productivity
    ./plugins/notes/markdown-preview.nix
    ./plugins/notes/render-markdown.nix
    ./plugins/notes/todo-comments.nix
    ./plugins/notes/wiki.nix

    # Utilities
    ./plugins/utils/oil.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/vimtex.nix
  ];
}
