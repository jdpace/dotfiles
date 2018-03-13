" Key Bindings:
"
" leader key: Reset from \ to ,
let mapleader = ","

" Let us use jj to esc
imap jj <Esc>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" Tab navigation
nmap <leader>tp :tabprevious<CR>
nmap <leader>tn :tabnext<CR>
nmap <leader>te :tabedit<Space>

" <leader>f to search
map <leader>f :Rg<Space>

" Close buffers
nmap <leader>q :Bclose<CR>
nmap <leader>b :bd<CR>

" Run GitHub tests
nnoremap <leader>gr :Dispatch testrb %<CR>

" FZF
nnoremap <silent> <leader>, :BLines<CR>
nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>B :Windows<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>gb :BCommits<CR>
nnoremap <silent> <leader>ft :Filetypes<CR>
