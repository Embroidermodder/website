Scraps
======

For
Embroidermodder 2.0.0-alpha4, libembroidery 1.0.0-alpha, PET 1.0.0-alpha
and EmbroideryMobile 1.0.0-alpha.

Since the document is shipped automatically try to update the revnumber each
time you edit using `revision.sh`.

Test these:

	sudo apt install latexml texlive-latex-base imagemagick info2man
	
	# For our command line tools:
	makeinfo embroider.texi -o embroider.info
	info2man embroider.info > embroider.1
	texi2pdf embroider.texi
	# Or groff macro package for example ms.
	# These may be housed in libembroidery since they're to be shipped as part of
	# the embroider tarball.
	
	# For online documentation:
	pandoc embroidermodder_refman.tex -f latex -t html -s -o emb_refman.html --bibliography embroidermodder.bib
	# Or latexml/latexmlpost

Command Language
----------------

Printer Command Language (PCL), see %\citet{packard1992pcl}.

HP-GL/2 Vector Graphics \index{HP-GL/2} described in %\citet{packard1992pcl}.
Has commands like: \texttt{PU} Pen Up, \texttt{PR} Plot Relative,
\texttt{EP} edge polygon.

So commands read like this:

	PA40,10;

command argument seperator (``,``) argument terminator(``;``)

Constructing new commands from old ones in the command language is less
natural in the HP-GL/2 language, but a similar layer for us is
the tajima DST format (CITE) for existing printers and CNC commands for
direct control... where'd we'd use G-Code (CITE) and Linux CNC (CITE).

Could we `setpagedevice` to a printer in some cases and a similar CUPS service
for embroidery machines in others?

All systems are supported by ghostscript, when you account for homebrew (CITE)::

	brew update
	brew upgrade
	brew install ghostscript
	brew cleanup

Vector graphic logos don't require the SVG Qt library.

Man Pages
---------

We maintain a traditional manpage for \texttt{embroider} using
the basic macros.

Arduino
-------

	apt-get install avr-libc gcc-avr uisp avrdude

