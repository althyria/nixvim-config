{pkgs, ...}: {
  extraPlugins = [ pkgs.vimPlugins.wiki-vim ];

  extraConfigLua = /* lua */ ''
    vim.g.wiki_root = '~/Documents'
    vim.g.wiki_filetypes = {'md'}
    vim.g.wiki_link_extension = '.md'
    vim.g.wiki_mappings_prefix = '<leader>W'
  '';
}
