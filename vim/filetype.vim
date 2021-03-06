augroup handlebars
  au! BufRead,BufNewFile *.hbs   setfiletype html
augroup END

" GitHub Flavoured Markdown
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" JSON syntax
" http://www.vim.org/scripts/script.php?script_id=1945
au! BufRead,BufNewFile *.json set filetype=json
