return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    explorer = {
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    picker = {
      sources = {
        explorer = {
          -- your explorer picker configuration comes here
          -- or leave it empty to use the default settings
        }
      }
    },
    image = {
      resolve = function(path, src)
         if require("obsidian.api").path_is_note(path) then
            return require("obsidian.api").resolve_image_path(src)
         end
      end,
      },
   }
}

