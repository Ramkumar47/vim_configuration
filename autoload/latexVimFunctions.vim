" All the vim function definitions goes in here, so that it will be loaded
" when vim starts
" note the function name defined in here, use # instead of /

" function to initialize latex
" document---------------------------------------------------------------------
function latexVimFunctions#InitDoc()
		" cleaning existing lines
		execute "normal! ggVGd"

		" setting filetype
		execute ":set filetype=tex"

		" writing filetype line
		execute "normal! i\%\&tex"

		" writing documentclass type
		execute "normal! o\\documentclass\{<>\}"

		" writing geometry package
		execute "normal! o\<Esc>"
		execute "normal! o\\usepackage\[a4paper,margin=1in\]\{geometry\}"

		" writing graphicx package
		execute "normal! o\<Esc>"
		execute "normal! o\\usepackage\{graphicx\}"
		execute "normal! o\\graphicspath\{\{\"<>\"\}\}"

		" writing cleveref package
		execute "normal! o\<Esc>"
		execute "normal! o\\usepackage\{cleveref\}"

		" writing subcaption package
		execute "normal! o\\usepackage\{subcaption\}"

		" writing title and author
		execute "normal! o\<Esc>"
		execute "normal! o\\title\{<>\}"
		execute "normal! o\\author\{<>\}"

		" defining environment
		execute "normal! o\<Esc>"
		execute "normal! o\\begin\{document\}"
		execute "normal! o\\end\{document\}\<Esc>O"
		execute "normal! o\<Esc>"
		execute "normal! s\\maketitle"
		execute "normal! o\<Esc>"
		execute "normal! o<>"
		execute "normal! o\<Esc>"

		" going back to top
		execute "normal! gg"
endfunction

" Bracket substitution function in latex for ease of access in prebuild
" document
" styles-----------------------------------------------------------------------
function latexVimFunctions#BracketSub()
		execute "call search\(\"<>\"\)"
		execute "normal! cf>\<Esc>l"
		execute "startinsert"
endfunction

" function to define latex
" environment------------------------------------------------------------------
function latexVimFunctions#BeginEnv()
		" getting environment name
		call inputsave()
		let envName = input("Environment Name: ")
		call inputrestore()

		"defining environment
		execute "normal! o\\begin{".envName."}"
		execute "normal! o\\end{".envName."}\<Esc>O<>"
endfunction

" function to define tabular
" environment------------------------------------------------------------------
function latexVimFunctions#CreateTabular()
		" defining tabular environment
		execute "normal! o\\begin\{tabular\}\{<>\}"
		execute "normal! o\\end\{tabular\}\<Esc>O<>"
		execute "normal! k"
endfunction

