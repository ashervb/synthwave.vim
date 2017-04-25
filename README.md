# synthwave.vim

A dark Vim color scheme for the GUI and 256-color terminals, based on fsociety's
[synthwave](https://code.fsociety.info/dotfiles/file/nvim/.config/nvim/plugged/synthwave/colors/synthwave.vim.html) theme.

![Synthwave](https://raw.github.com/exitface/synthwave.vim/master/docs/synthwave.png)

Code shamelessly stolen from the fabulous [onedark](https://github.com/joshdick/onedark.vim) theme.

## Requirements

Terminal that supports at least 256 colors, preferably 24-bit color.

## Installation

In your `~/.vimrc`.

    set background=dark
    color synthwave

    if has('termguicolors')
      set termguicolors " 24-bit terminal
    else
      let g:synthwave_termcolors=256 " 256 color mode
    endif

### Vundle

Add the following to your `~/.vimrc` file and run `PluginInstall` in Vim.

    Plugin 'exitface/synthwave.vim'

### vim-plug

Add the following to your `~/.vimrc` file and run `PlugInstall` in Vim.

    Plug 'exitface/synthwave.vim'

### Pathogen

    cd ~/.vim/bundle
    git clone https://github.com/exitface/synthwave.vim

### Manual

    cd ~/.vim/colors
    git clone git://github.com/exitface/synthwave.vim synthwave.vim
    cp synthwave.vim/colors/*.vim .


## vim-airline Theme

![airline-synthwave.vim Preview](https://raw.github.com/exitface/synthwave.vim/master/docs/airline.png)

[vim-airline](https://github.com/vim-airline/vim-airline) theme for use with synthwave.vim.

* Must be used with the base synthwave.vim theme.
* Based on [onedark.vim](https://github.com/joshdick/onedark.vim/), which in turn is based on vim-airline's ["tomorrow" theme](https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/tomorrow.vim).

### Installation

Assuming vim-airline and synthwave are already installed and configured:

Copy `synthwave.vim/autoload/airline/themes/synthwave.vim` to `~/.vim/autoload/airline/themes/` directory add the following line to your `~/.vimrc`:

```vim
let g:airline_theme='synthwave'
```
