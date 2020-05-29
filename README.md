# neuron.vim
Manage your [Zettelkasten](https://neuron.zettel.page/2011401.html) with the
help of [neuron](https://github.com/srid/neuron) in {n}vim.

![usage-photo](https://lh3.googleusercontent.com/pw/ACtC-3evhU2zPQuPzn69rEyiWqDKQvcGaXL_1pIPlOMzZU3SFsIG4BdsaPuUtUsEoTYnhrNmXH33T0_oRPEyV4-PEBGHJlPFrukb-NSbBzgGnUxzezlUpnAIPkGxB0bVXLe0v44CZPrXR1njIy12uUcqEns8=w1768-h994-no)

## Requirements
- [neuron](https://github.com/srid/neuron)
- [fzf](https://github.com/junegunn/fzf.vim)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

## Installation
### Using [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'junegunn/fzf.vim'
Plug 'BurntSushi/ripgrep'
```
```vim
Plug 'ihsanturk/neuron.vim'
```

## Mappings
```vim
nm <m-z>           :call ZettelSearch()<cr>
nm <LocalLeader>zn :call ZettelNew()<cr>
nm <LocalLeader>zi :call ZettelSearchInsert()<cr>
nm <LocalLeader>zl :call ZettelLastInsert()<cr>
nm <LocalLeader>zo :call ZettelOpenUnderCursor()<cr>
nm <LocalLeader>zu :call ZettelOpenLast()<cr>
```