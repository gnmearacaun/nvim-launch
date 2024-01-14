local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-i>", "<C-i>", opts)

-- Better window navigation
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("x", "p", [["_dP]])

vim.cmd [[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]]
vim.cmd [[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]]
-- vim.cmd [[:amenu 10.120 mousemenu.-sep- *]]

vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>:popup mousemenu<CR>")

-- more good
keymap({ "n", "o", "x" }, "<s-h>", "^", opts)
keymap({ "n", "o", "x" }, "<s-l>", "g_", opts)

-- tailwind bearable to work with
keymap({ "n", "x" }, "j", "gj", opts)
keymap({ "n", "x" }, "k", "gk", opts)
-- keymap("n", "<leader>w", ":lua vim.wo.wrap = not vim.wo.wrap<CR>", opts)


vim.api.nvim_set_keymap('t', '<C-;>', '<C-\\><C-n>', opts)


-- added by BOD from lazyvim
keymap({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Move to window using the <ctrl> hjkl keys
keymap("n", "<C-h>", "<C-w>h", opts )
keymap("n", "<C-j>", "<C-w>j", opts )
keymap("n", "<C-k>", "<C-w>k", opts )
keymap("n", "<C-l>", "<C-w>l", opts )

-- Resize window using <ctrl> arrow keys
keymap("n", "<C-Up>", "<cmd>resize +2<cr>", opts )
keymap("n", "<C-Down>", "<cmd>resize -2<cr>",  opts )
keymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", opts )
keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", opts )

-- buffers
keymap("n", "<S-h>", "<cmd>bprevious<cr>", opts )
keymap("n", "<S-l>", "<cmd>bnext<cr>", opts )
keymap("n", "[b", "<cmd>bprevious<cr>", opts )
keymap("n", "]b", "<cmd>bnext<cr>", opts )
-- keymap("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
keymap("n", "<leader>`", "<cmd>e #<cr>", opts )

-- to convert, also more in the lazyvim repo, mostly whichkey

-- -- Clear search with <esc>
-- map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
--
-- -- Clear search, diff update and redraw
-- -- taken from runtime/lua/_editor.lua
-- map(
--   "n",
--   "<leader>ur",
--   "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
--   { desc = "Redraw / clear hlsearch / diff update" }
-- )
--
-- -- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
-- map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next search result" })
-- map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
-- map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
-- map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev search result" })
-- map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
-- map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

-- -- Terminal Mappings
-- map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
-- map("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
-- map("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
-- map("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
-- map("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
-- map("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
-- map("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })
--
-- -- windows
-- map("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
-- map("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
-- map("n", "<leader>w-", "<C-W>s", { desc = "Split window below", remap = true })
-- map("n", "<leader>w|", "<C-W>v", { desc = "Split window right", remap = true })
-- map("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
-- map("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })
--
-- -- tabs, leader<tab> is going to harpoon bod
-- keymap("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
-- keymap("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
-- keymap("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
-- keymap("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
-- keymap("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
-- keymap("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- added by BOD

-- Navigating buffers
-- s is used for substitution, maplocalleader to t instead
keymap("n", "tj", ":bprevious<CR>", opts)
keymap("n", "tk", ":bnext<CR>", opts)
keymap("n", "to", ":<C-u>tabnew<CR>", opts)
-- keymap("n", "tn", ":<C-u>tabnew<CR>", opts)
-- " Toggle between last 2 buffers
keymap("n", "tt", "<C-^>", opts)
keymap("n", "tq", ":call CloseBuffer()<CR>", opts)
keymap("n", "tx", ":<C-u>call BufferEmpty()<CR>", opts)

keymap("n", "<leader>`", "<cmd>e #<cr>", opts )
-- keymap("n", "<leader><ESC><ESC>, "<cmd>tabclose<CR>", opts )
-- keymap("n", "<leader><ESC><ESC>, ":tabclose<CR>", { desc = "Close Tab" })

keymap("i", "kj", "<ESC>", opts)

-- Easy colon, shift not needed
keymap("n", ";", ":", opts)
keymap("v", ";", ":", opts)
keymap("n", ":", ";", opts)
keymap("v", ":", ";", opts)

-- Record Macros with 'Q'. Use 'q' for quitting rapidly.
keymap("n", "Q", "<Nop>", opts)
keymap("n", "Q", "q`]", opts)
keymap("n", "q", "<Nop>", opts)
keymap("n", "q", "<C-w>q", opts)
-- keymap("n", "q", ":call SmartQuit()<CR>", opts)
--keymap('n', 'q', 'Q`]', opts)

-- Markdown Preview keybindings
-- keymap("n", "tm", "<cmd>MarkdownPreview<CR>", opts)
-- keymap("n", "tg", "<Plug>MarkdownPreviewToggle", opts)

-- autoscroll plugin
keymap("n", "ts", "<cmd>ScrollDown<CR>", opts)
keymap("n", "tu", "<cmd>ScrollUp<CR>", opts)
keymap("n", "te", "<cmd>StopScrolling<CR>", opts)

-- Navigating word wrap
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- here be errors
-- keymap("n", "<F5>", "=strftime("\%c")<CR>P", opts)
-- keymap("i", "<F5>", "<C-R>=strftime("\%c")<CR>", opts)

-- other keymappings
vim.cmd([[
" paste on cursor
" nnoremap gP i<CR><Esc>PkJxJx
" nnoremap gp a<CR><Esc>PkJxJx
" delete without yanking
"nnoremap <leader>d "_d
"vnoremap <leader>d "_d
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>
" Save with sudo
cmap W!! w !sudo tee % >/dev/null
" Start an external command with a single she-bang
nnoremap ! :!
" Move to beginning or end of line
nnoremap B ^
nnoremap E $
" so x doesn't clobber paste buffer"
nnoremap x "_x
" Change next match in a repeatable manner
" nnoremap cn *``cgn
" nnoremap cN *``cgN
" vnoremap <expr> cn "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>" . "``cgn"
" vnoremap <expr> cN "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>" . "``cgN"
"nnoremap <leader>a =ip    " Indent a paragraph
" Center highlighted search
"nnoremap n nzz
"nnoremap N Nzz
" Move to end of yanked text after yank
vnoremap y y`]
" Move to end of text after paste
nnoremap p p`]
vnoremap p p`]
" Replace current work with last yanked selection
"nnoremap <Leader>. viw"0p
" nnoremap cp yap<S-}>p
" Quick substitute within a selected area
"xnoremap s :s//g<Left><Left>
" Select last paste. Except interferes with vimdiff!!
"nnoremap <expr> gp '`['.strpart(getregtype(), 0, 1).'`]'
" paste line(s) at the bottom of the file
" nnoremap tb :mark '<cr>:$put<cr>`'
let g:AutoScrollSpeed = 800


" vimwiki/vimwiki
" nnoremap <Leader>tl <Plug>VimwikiToggleListItem
" vnoremap <Leader>tl <Plug>VimwikiToggleListItem
" nnoremap <Leader>wn <Plug>VimwikiNextLink
" let g:vimwiki_global_ext = 0
" let wiki = {}
" let wiki.nested_syntaxes = { 'js': 'javascript' }
" " let g:vimwiki_list = [wiki] 
"
" Vimwiki 
function! OpenNoteWiki()
  call vimwiki#base#goto_index(2)
"  execute ':Calendar'
endfunction
nnoremap t2 :call OpenNoteWiki()<cr>
function! OpenThisWiki()
  call vimwiki#base#goto_index(3)
endfunction
nnoremap 3 :call OpenThisWiki()<cr>
function! OpenTechWiki()
  call vimwiki#base#goto_index(4)
endfunction
nnoremap 4 :call OpenTechWiki()<cr>

let g:vimwiki_list = [{
          \ 'path': '~/scripts/vimwiki',
          \ 'template_path': '~/scripts/vimwiki/templates/',
          \ 'template_default': 'default',
          \ 'syntax': 'markdown', 
          \ 'ext': '.md',
          \ 'path_html': '~/scripts/vimwiki/site_html/',
          \ 'custom_wiki2html': 'vimwiki_markdown',
          \ 'template_ext': '.tpl'
          \ },
          \ {
              \ 'path': '~/scripts/vimwiki/notewiki',
              \ 'template_path': '~/scripts/vimwiki/templates/',
              \ 'template_default': 'default',
              \ 'syntax': 'markdown',
              \ 'ext': '.md',
              \ 'path_html': '~/scripts/vimwiki/notewiki/site_html/',
              \ 'custom_wiki2html': 'vimwiki_markdown',
              \ 'template_ext': '.tpl'},
              \ {'path': '~/scripts/vimwiki/thiswiki'},
              \ {'path': '~/scripts/vimwiki/techwiki'}
              \]
]])

-- Clear match highlights
-- keymap("n", "<esc>", ":noh<cr>", opts)

-- Reselect visual after indent
-- keymap("v", "<", "<gv", opts)
-- keymap("v", ">", ">gv", opts)

-- Search selected text
-- Consistent `*` behaviour
-- keymap("n", "*", [[*N]], opts)
-- keymap("v", "*", [[y/\V<c-r>=escape(@",'/\')<cr><cr>N]], opts)

-- keymap("n", "ms", "<cmd>MarkdownPreview<CR>", opts)

-- Y yank until the end of line
-- keymap("n", "Y", "y$", opts)
-- keymap("n", "Y", "y$", opts)
-- Move to end of text after yank or paste
-- keymap('v', 'p', 'p`]', opts)
