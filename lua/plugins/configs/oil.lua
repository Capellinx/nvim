local detail = false

local options = {
  default_file_explorer = true,
  columns = {
    "icon",
  },
  -- Deleta pra lixeira ao invés de deletar permanente
  delete_to_trash = true,
  -- Pula confirmação em operações simples (renomear 1 arquivo, etc)
  skip_confirm_for_simple_edits = true,
  -- Atualiza automaticamente quando arquivos mudam no filesystem
  watch_for_changes = true,
  -- Mantém cursor só na parte editável (nomes dos arquivos)
  constrain_cursor = "editable",
  -- Renomear/mover atualiza imports via LSP
  lsp_file_methods = {
    enabled = true,
    timeout_ms = 1000,
    autosave_changes = "unmodified",
  },
  view_options = {
    show_hidden = true,
  },
  keymaps = {
    ["g?"] = { "actions.show_help", mode = "n" },
    ["<CR>"] = "actions.select",
    ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open in vertical split" },
    ["<C-x>"] = { "actions.select", opts = { horizontal = true }, desc = "Open in horizontal split" },
    ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open in new tab" },
    ["<C-p>"] = "actions.preview",
    ["q"] = { "actions.close", mode = "n" },
    ["<C-l>"] = "actions.refresh",
    ["-"] = { "actions.parent", mode = "n" },
    ["_"] = { "actions.open_cwd", mode = "n" },
    ["`"] = { "actions.cd", mode = "n" },
    ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
    ["gs"] = { "actions.change_sort", mode = "n" },
    ["gx"] = "actions.open_external",
    ["g."] = { "actions.toggle_hidden", mode = "n" },
    ["g\\"] = { "actions.toggle_trash", mode = "n" },
    -- Toggle detalhes (permissions, size, mtime) com gd
    ["gd"] = {
      desc = "Toggle file detail view",
      callback = function()
        detail = not detail
        if detail then
          require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
        else
          require("oil").set_columns({ "icon" })
        end
      end,
    },
  },
  float = {
    padding = 2,
    max_width = 0,
    max_height = 0,
    border = "rounded",
    win_options = {
      winblend = 0,
    },
    override = function(conf)
      local screen_w = vim.o.columns
      local screen_h = vim.o.lines - vim.o.cmdheight
      conf.width = math.floor(screen_w * 0.8)
      conf.height = math.floor(screen_h * 0.8)
      conf.col = math.floor((screen_w - conf.width) / 2)
      conf.row = math.floor((screen_h - conf.height) / 2)
      return conf
    end,
  },
  win_options = {
    signcolumn = "yes:2",
  },
}

return options
