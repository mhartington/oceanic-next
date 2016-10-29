# Oceanic-Next.vim


Using base16 as a starting point, Oceanic-Next.vim is a neovim theme inspired by [Oceanic Next for Sublime](https://github.com/voronianski/oceanic-next-color-scheme). It is not a direct port, but uses some colors from the sublime theme, that are fitted to work with neovim.


If you are using this for JavaScript, it's suggested that you use the following syntax library

 [yajs.vim](https://github.com/othree/yajs.vim)


 Using whatever plugin manager you choose.

## Installation

All major plugin managers for vim are supported

 ```vim

 <PACKAGE_MANAGER> 'mhartington/oceanic-next'
 ```


For vim, add the following to your `.vimrc`.

 ```viml
 " Theme
 syntax enable
 " for vim 7
 set t_Co=256

 " for vim 8
 set termguicolors

 colorscheme OceanicNext
 ```

For neovim, add the following to your `.nvimrc`.

```viml
 " For Neovim 0.1.3 and 0.1.4
 let $NVIM_TUI_ENABLE_TRUE_COLOR=1

 " Or if you have Neovim >= 0.1.5
 if (has("termguicolors"))
   set termguicolors
 endif

 " Theme
 syntax enable
 colorscheme OceanicNext
```

There is an included theme for vim-airline, to use it, just change the airline theme to:

```
  let g:airline_theme='oceanicnext'
```

 There is a light mode, but it still needs some work.
 Currently, light mode has issues with cursor, need to tweak the colors a bit for that.
 Also, the included airline theme could use some work in light mode. Right now it is the exact same as the dark version, I'd like to tweak this a bit.
 If anyone would like to contribute, I'd be happy to accept a Pull Request.

## Configuration

You can enable italics and bold folds if your terminal supports it. Some terminals support it out of the box, while others need some work. Give [this article](http://bruinsslot.jp/2016/05/29/how-to-enable-true-color-for-neovim-tmux-and-gnome-terminal/) a read if you would like to enable it for both gnome and iTerm.

To enable them, add these lines:

```vim
" enable italics, disabled by default
let g:oceanic_next_terminal_italic = 1

" enable bold, disabled by default
let g:oceanic_next_terminal_bold = 1
```

## Screenshot

Base colors used in the theme.

![](https://raw.githubusercontent.com/voronianski/oceanic-next-theme/master/colors.png)

_neovim_
![](https://raw.githubusercontent.com/mhartington/oceanic-next/master/oceanic-next-dark.nvim.png)


_vim_
![](https://raw.githubusercontent.com/mhartington/oceanic-next/master/oceanic-next-dark.vim.png)

Shown here with [vim-devicons](https://github.com/ryanoasis/vim-devicons)

