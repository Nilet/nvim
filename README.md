# My neovim config


## Table of contents 
1. [Installation](#installation)
2. [Remaps](#remaps)
3. [File structure](#file-structure)

## Installation 

1. Install neovim (using arch btw)
```shell
 sudo pacman -S neovim
 ```

2. Install packer.nvim, a package manager for neovim
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

3. Clone this repo into .config
```shell
git clone https://github.com/Nilet/nvim ~/.config/nvim
```
4. Install packages, there are two ways of doing
    > Through the terminal without actually entering nvim (you might to run it twice)
    ```shell
    nvim -c PackerSync
    ```
    > Or just enter neovim and run PackerSync
    ```shell
    nvim
    :PackerSync
    ```

## Remaps

### General
- ```Space``` is the leader key
- ```<leader>p``` Pastes into selected without cutting out the content
- ```<leader>d``` Deletes the selected without cutting out the content
- ```<leader><leader>``` Sources the current file to the neovim configuration
- ```<leader>x``` Makes the current file executable
- ```Ctrl +``` ```h```, ```j```, ```k``` or ```l``` Navigates through windows
- ```Alt + ``` ```1``` through ```3``` Toggles terminal inside neovim
- ```<leader>vpp``` Jumps to packer config file

### Visual mode
- ```Alt + j``` or ```Alt + k``` moves the selected lines up and down, just like vscode
- ```<leader>/``` Comments the selected lines

### Normal mode

- ```yaf``` yanks the whole file (my favorite)
- ```<leader>w``` Saves the current file
- ```<leader>q``` Closes current window
- ```<leader>s``` Search and replace the current word for the whole file
- ```<leader>/``` Comments the selected line
- ```<leader>e``` Toggles file explorer
- ```<leader>bn``` and ```<leader>bb``` Cycles next and previous buffers
- ```<leader>bc``` Closes the current buffer
- ```<leader>u``` Toggles undotree, extremely useful plugin


### Telescope
- ```<leader>pf``` fuzzy find files in the current project
- ```Ctrl + p``` fuzzy find files in the current git repo
- ```<leader>ps``` Search for a string and fuzzy find files with it

### LSP
- ```<leader>f``` Formats the current file 
- ```Ctrl + ``` ```b``` or ```n``` cycles through items to complete
- ```Ctrl + y``` Confirms selection
- ```gd``` Jumps to definition
- ```K``` in visual mode displays information about the current function, or variable or whatever
- ```<leader>vca``` Displays code actions
- ```<leader>vrn``` Renames the current variable or function or whatever

### Git 
- ```<leader>gs``` Toggles git status window
- ```s``` Inside git status window stages current line
- ```cc``` Create commit
- ```<leader>p``` Inside git status window pushes changes

## File structure

```
├── after
│   └── plugin
│       ├── bufferline.lua
│       ├── fugitive.lua
│       ├── lsp.lua
│       ├── neodev.lua
│       ├── numb.lua
│       ├── nvim-comment.lua
│       ├── nvim-tree.lua
│       ├── telescope.lua
│       ├── toggleterm.lua
│       ├── treesitter.lua
│       ├── trouble.lua
│       └── undotree.lua
├── init.lua
└── lua
    └── blz
        ├── init.lua
        ├── packer.lua
        ├── remap.lua
        └── set.lua
```
- Add plugins in the packer.lua file, can access it by pressing ```<leader>vpp``` in normal mode
- Create plugin specific .lua config file in the after/plugin folder
- Set native neovim configs in lua/blz/set.lua
