" 基础设置
lua require('basic')
lua require('keybindings')
lua require('plugins')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/cocnvim')
lua require('plugin-config/which-key')
set tabstop=4
set nolist
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'cpp'
        exec "AsyncRun! -mode=term -pos=thelp g++ $(VIM_FILEPATH) -o $(VIM_FILEDIR)/$(VIM_FILENOEXT) ; $(VIM_FILEDIR)/$(VIM_FILENOEXT)" 
    elseif &filetype == 'c'
        exec "AsyncRun! -mode=term -pos=thelp gcc $(VIM_FILEPATH) -o $(VIM_FILEDIR)/$(VIM_FILENOEXT) ; $(VIM_FILEDIR)/$(VIM_FILENOEXT)" 
    elseif &filetype == 'java'
        exec "AsyncRun! -mode=term -pos=thelp javac $(VIM_FILEPATH) ; java $(VIM_FILENOEXT)"
    elseif &filetype == 'python'
        exec "AsyncRun! -mode=term -pos=thelp -raw python3 $(VIM_FILEPATH)"
    elseif &filetype == 'javascript'
        exec "AsyncRun! -mode=term -pos=thelp node $(VIM_FILEPATH)"
    elseif &filetype == 'go'
        exec "AsyncRun! -mode=term -pos=thelp go run $(VIM_FILEPATH)"
    endif
endfunc


if has('termguicolors')
    set termguicolors
endif
colorscheme onedark

set clipboard+=unnamedplus

if exists('g:vscode')
    " VSCode extension
else
    " ordinary Neovim
endif


set termguicolors
