# Oceanic-Next.vim


Using base16 as a starting point, Oceanic-Next.vim is neovim them inspired by [Oceanic Next for Sublime](https://github.com/voronianski/oceanic-next-color-scheme). It is not a direct port, but uses some colors from the sublime theme, that are fitted to work with neovim.

**This theme is specific to neovim as it needs true color support.**

If you are using this for JavaScript, it's suggested that you use the follow syntax libraries.

 [vim-javascript](https://github.com/pangloss/vim-javascript)

 [vim-jsx](https://github.com/mxw/vim-jsx)

 Using whatever plugin manager you choose.

## Installation

### Vundle/NeoBundle/Vim-Plug

 All major plugin managers for vim are support

 ```vim

 <PACKAGE_MANAGER> 'mhartington/oceanic-next'
 ```


 Then to use it in your `.vimrc`, add the following lines.

 ```viml
 " Theme
 syntax enable
 set t_Co=256
 colorscheme OceanicNext
 set background=dark
 ```

 There is a light mode, but it still needs some work.

## Screenshot

![](https://raw.githubusercontent.com/mhartington/oceanic-next/master/oceanic-next-dark.vim.png)

![](https://raw.githubusercontent.com/mhartington/oceanic-next/master/oceanic-next-light.vim.png)


## TODOs

I'd like to add support for regular Vim, the colors just need to be tweaked for 256 colors only. All the logic is there, just need to do the work.

This is perfect place to start for people who have never contributed to open source before.
