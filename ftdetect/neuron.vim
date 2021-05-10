let g:neuron_extension = get(g:, 'neuron_extension', '.md')
let b:neuron_dir = get(g:, 'neuron_dir', expand('%:p:h'))

" if there is no neuron.dhall file in current dir then it is not a zettelkasten
if !filereadable(b:neuron_dir."/neuron.dhall")
	finish
endif

exec 'au BufNewFile,BufRead '.fnameescape(b:neuron_dir).'*'.fnameescape(g:neuron_extension).' setfiletype markdown.neuron'
exec 'au BufEnter '.fnameescape(b:neuron_dir).'*'.fnameescape(g:neuron_extension).' call neuron#on_enter()'
exec 'au BufWrite '.fnameescape(b:neuron_dir).'*'.fnameescape(g:neuron_extension).' call neuron#on_write()'
exec 'au CursorMoved '.fnameescape(b:neuron_dir).'*'.fnameescape(g:neuron_extension).' call neuron#on_cursor_move()'
exec 'au BufLeave '.fnameescape(b:neuron_dir).'*'.fnameescape(g:neuron_extension).' call neuron#clear_zettel_title_float_win()'
