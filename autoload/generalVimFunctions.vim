" This file contains general vim functions that were needed irrespective
" of filetypes

" function to automatically change filetype to cpp for OpenFOAM
" files------------------------------------------------------------------------
function generalVimFunctions#InitCPP()
		execute "normal! mMgg"
		if search("OpenFOAM") && search("C++") && search("FoamFile")
				execute ":set filetype=cpp"
		endif
		execute "normal! `M"
endfunction
