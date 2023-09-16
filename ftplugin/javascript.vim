" functions to start web server for p5js
function StartWebServer()
	call inputsave()
	let portNo = input("Enter port number:")
	call inputrestore()
	execute ":!clear" <cr>
	execute ":!python -m http.server "portNo "> /dev/null 2>&1&"
	echo "Server started with port:"portNo
endfunction

function KillWebServer()
	execute ":!clear" <cr>
	execute ":!ps aux | awk '$11==\"python\"{print $2}' | xargs kill"
	echo "Server killed"
endfunction


nnoremap <F5> :call StartWebServer() <cr>
nnoremap <F6> :call KillWebServer() <cr>
