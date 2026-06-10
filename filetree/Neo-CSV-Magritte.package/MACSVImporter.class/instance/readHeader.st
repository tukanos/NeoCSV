private
readHeader
	"For exotic headers (i.e. not a single line with field names), override this. For example, you may for example want to skip irrevelant/blank lines."
	^ self reader readHeader