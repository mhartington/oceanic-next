# Oceanic-Next.vim


Using base16 as a starting point, Oceanic-Next.vim is a neovim theme inspired by [Oceanic Next for Sublime](https://github.com/voronianski/oceanic-next-color-scheme). It is not a direct port, but uses some colors from the sublime theme, that are fitted to work with neovim.


If you are using this for JavaScript, it's suggested that you use the following syntax library

 [yajs.vim](https://github.com/othree/yajs.vim)


 Using whatever plugin manager you choose.

## Installation

### Vundle/NeoBundle/Vim-Plug

 All major plugin managers for vim are supported

 ```vim

 <PACKAGE_MANAGER> 'mhartington/oceanic-next'
 ```


For vim, add the following to your `.vimrc`.

 ```viml
 " Theme
 syntax enable
 set t_Co=256
 colorscheme OceanicNext
 set background=dark
 ```

For neovim, add the following to your `.nvimrc`.

```viml
 " Theme
 syntax enable
 let $NVIM_TUI_ENABLE_TRUE_COLOR=1
 colorscheme OceanicNext
 set background=dark
```

There is an included theme for vim-airline, to use it, just change the airline theme to:

```
  let g:airline_theme='oceanicnext'
```

 There is a light mode, but it still needs some work.
 Currently, light mode has issues with cursor, need to tweak the colors a bit for that.
 Also, the included airline theme could use some work in light mode. Right now it is the exact same as the dark version, I'd like to tweak this a bit.
 If anyone would like to contribute, I'd be happy to accept a Pull Request.

## Screenshot

_neovim_
![](https://raw.githubusercontent.com/mhartington/oceanic-next/master/oceanic-next-dark.nvim.png)


_vim_
![](https://raw.githubusercontent.com/mhartington/oceanic-next/master/oceanic-next-dark.vim.png)

Shown here with [vim-devicons](https://github.com/ryanoasis/vim-devicons)

