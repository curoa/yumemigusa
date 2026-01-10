function _cv {
	_files -W ~/.local/var/cv_data/
}
compdef _cv cv

function _cr {
	compadd frontend app backend api
}
compdef _cr cr

function _four {
	compadd beamer c++ pdflatex python procon pandoc
}
compdef _four four

