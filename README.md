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
![Bufferline](https://user-images.githubusercontent.com/94284073/184544887-77fc69b2-301c-4e48-b3b6-3c5df2120ee6.png)

## Statusline
- Evil
![evil](https://user-images.githubusercontent.com/94284073/184544898-794d8781-0ff8-4e8f-b05d-b5f163f12af8.png)
- Minimal
![minimal](https://user-images.githubusercontent.com/94284073/184544903-17ab3e25-1c2c-4dc2-8fd8-93018b3e26d6.png)
- Nvoid
![nvoid](https://user-images.githubusercontent.com/94284073/184544905-f4da23d6-9e3e-4e5b-b405-7d24c91f18c0.png)

## Rename
![2022-08-14-170457_1600x900_scrot](https://user-images.githubusercontent.com/94284073/184544992-27ba12fd-c148-4981-88ab-2a3c6118c5c4.png)


# Base16

# Credits
- [Nvim Base16](https://github.com/norcalli/nvim-base16.lua)
- [NvChad Base46](https://github.com/NvChad/base46)
- [NvChad UI](https://github.com/NvChad/ui)
