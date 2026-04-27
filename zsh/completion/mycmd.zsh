function _cv {
	_files -W ~/.local/var/cv_data/
}
compdef _cv cv

function _cs {
	compadd frontend app backend api e2e
}
compdef _cs cs

function _four {
	compadd beamer c++ pdflatex python procon pandoc
}
compdef _four four

