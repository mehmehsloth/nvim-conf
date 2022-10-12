require('telescope').setup{
  defaults = {
    prompt_prefix = "$ ",
    selection_caret = "> ",
    initial_mode = "insert",
    file_ignore_patterns = {'node_modules/**', '.git/**'},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    border = {},
    layout_config = {
        width =0.9 ,
        preview_cutoff = 0.5,
    }
  },
  -- pickers = {
  --   find_files = {
  --     theme = "ivy",
  --   }
  -- },
}
