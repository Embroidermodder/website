#!/bin/bash
#
# Include documentation from our other repositories

git submodule update --init

# Build HTML and PDF API docs and install
for project in embroidermodder libembroidery EmbroideryMobile
do
	echo "Building $project API docs"
	cd $project
		doxygen
		cd docs/latex
			make
		cd ..
		cd docs/man
			make
		cd ..
	cd ..

	HTML_API_DOC=docs/docs/$project
	rm $HTML_API_DOC
	echo "Installing API docs (HTML version) version $HTML_API_DOC..."
	cp -r $project/docs/html $HTML_API_DOC

	PDF_API_DOC=docs/$project_api.pdf
	echo "Installing API docs (PDF version) $PDF_API_DOC..."
	cp $project/docs/latex/refman.pdf $PDF_API_DOC

	MANUAL=docs/$project/man
	echo "Installing user manual to $MANUAL..."
	cp $project/docs/man $MANUAL
done
