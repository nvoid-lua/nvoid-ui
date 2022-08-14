# nvoid-ui
This plugin is for both the colors and UI stuff

# Install
Note: Make it the first plugins which need to have any highlight from the colorscheme
- Packer
```lua
use { "nvim-lua/plenary.nvim" },
use { "nvoid-lua/nvoid-ui" }
use { "kyazdani42/nvim-web-devicons", after = "nvoid-ui", }
```
Note: the Git Stuff for the StatusLine needs [git-signs](https://github.com/lewis6991/gitsigns.nvim)

# Config
```lua
vim.g.theme = "onedark" -- catppuccin | classic-dark | dracula | gruvbox | nord | solarized | tokyodark | uwu
vim.g.transparency = false
require("ui").setup{
  statusline = {
    enable = true
    style = "nvoid" -- evil | minimal
  }
  bufferline = true
}
```

## BufferLine
## StatusLine
## Rename

# Base16

# Credits
- [Nvim Base16](https://github.com/norcalli/nvim-base16.lua)
- [NvChad Base46](https://github.com/NvChad/base46)
- [NvChad UI](https://github.com/NvChad/ui)
