Graphical User Interface for Desktop
====================================

.. index:: GUI

Design
~~~~~~

These are key bits of reasoning behind why the software is built the way
it is.

Overview
--------

.. warning::
   UNDER MAJOR RESTRUCTURING, PLEASE WAIT FOR VERSION 2

Embroidermodder is a free machine embroidery application.
The newest version, Embroidermodder 2 can:

#. edit and create embroidery designs
#. estimate the amount of thread and machine time needed to stitch a design
#. convert embroidery files to a variety of formats
#. upscale or downscale designs
#. run on Windows, Mac and Linux

*Embroidermodder 2* is very much a work in progress since we're doing a ground
up rewrite to an interface in C using the GUI toolkit SDL2.
The reasoning for this is detailed in the issues tab.

For a more in-depth look at what we are developing read our
website (https://www.libembroidery.org) which includes these docs as well
as the up-to date printer-friendly versions. These discuss recent changes,
plans and has user and developer guides for all the Embroidermodder projects.

To see what we're focussing on right now, see the Open Collective
News (https://opencollective.com/embroidermodder).

// fixme
This current printer-friendly version
is here (https://www.libembroidery.org/docs/emrm_current.pdf).

License
~~~~~~~

The source code is under the terms of the zlib license: see `LICENSE.md`
in the source code directory.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3
or any later version published by the Free Software Foundation;
with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.

%A copy of the license is included in Section~\ref{GNU-free-documentation-license}.

Build and Install
~~~~~~~~~~~~~~~~~

Assuming you already have the SDL2 libraries you can proceed to using the fast build, which
assumes you want to build and test locally.

The fast build should be::

	bash build.sh

or, on Windows::

	.\build.bat

Then run using the `run.bat` or `run.sh` scripts in the build/ directory.

Otherwise, follow the instructions below.

If you plan to install the dev version to your system (we recommend you wait
for the official installers and beta release first) then use the CMake build
instead.

Install on Desktop
~~~~~~~~~~~~~~~~~~

We recommend that if you want to install the development version you use the CMake build. Like
this::

	git submodule --init --update
	
	mkdir build
	cd build
	cmake ..
	cmake --build .
	sudo cmake --install .

These lines are written into the file::

	./build_install.sh

On Windows use the next section.

History
-------

Embroidermodder 1 was started by Mark Pontius in 2004 while staying up all night
with his son in his first couple months. When Mark returned to his day job, he
lacked the time to continue the project. Mark made the decision to focus on his
family and work, and in 2005, Mark gave full control of the project to Josh
Varga so that Embroidermodder could continue its growth.

Embroidermodder 2 was conceived in mid 2011 when Jonathan Greig and Josh Varga
discussed the possibility of making a cross-platform version. It is currently in
active development and will run on GNU/Linux, Mac OS X, Microsoft Windows and
Raspberry Pi.

All Embroidermodder downloads (downloads.html) are hosted on SourceForge.

The source code for Embroidermodder 1
(http://sourceforge.net/p/embroidermodder/code/HEAD/tree/embroidermodder1)
has always been hosted on Sourceforge.

The source code for Embroidermodder 2
(https://github.com/Embroidermodder/Embroidermodder) was moved to GitHub
on July 18, 2013.

The website for Embroidermodder
(https://github.com/Embroidermodder/website) was moved to
GitHub on September 9, 2013.

Contact us
----------

For general questions email: mailto:embroidermodder@gmail.com.

To request a new feature  open an issue on the main Embroidermodder GitHub
repository (https://github.com/Embroidermodder/Embroidermodder/issues).
We'll move it to the correct repository.

Downloads
---------

Alpha Build
~~~~~~~~~~~

This is a highly experimental build: we recommend users wait for the beta
release when the basic features are functional.

Visit our  GitHub Releases page
(https://github.com/Embroidermodder/Embroidermodder/releases)
for the current build. Unfortunately, earlier builds went down with the
Sourceforge page we hosted them on.

GUI
===

Embroidermodder 2 is very much a work in progress since we're doing a ground
up rewrite to an interface in Python using the GUI toolkit Tk. The reasoning for
this is detailed in the issues tab.

For a more in-depth look at what we are developing read the developer notes (link to dev notes
section). This discusses recent changes in a less formal way than a changelog (since this
software is in development) and covers what we are about to try.

Documentation
-------------

The documentation is in the form of the website
(included in the `docs/` directory) and the printed docs in this file.

Development
~~~~~~~~~~~

If you wish to develop with us you can chat via the contact email on the
website (https://www.libembroidery.org) or in the issues tab on the
github page (https://github.com/Embroidermodder/Embroidermodder/issues).
People have been polite and friendly in these conversations and I (Robin) have
really enjoyed them. If we do have any arguments please note we have a Code of
Conduct (``CODE_OF_CONDUCT.md``) so there is a consistent policy to enforce when
dealing with these arguments.

The first thing you should try is building from source using the build advice(link to build)
above. Then read some of the development notes (link to dev notes.md) to get the general
layout of the source code and what we are currently planning.

Testing
~~~~~~~

To find unfixed errors run the tests by launching from the command line with:

	$ embroidermodder --test

then dig through the output. It's currently not worth reporting the errors, since
there are so many but if you can fix anything reported here you can submit a PR.


Code Optimisations and Simplifications
--------------------------------------

Geometry
~~~~~~~~

The geometry is stored, processed and altered via libembroidery. See the Python specific part
of the documentation for libembroidery for this. What the code in Embroidermodder does is make
the GUI widgets to change and view this information graphically.

For example if we create a circle with radius 10mm and center at `(20mm, 30mm)` then fill it
with stitches the commands would be

	from libembroidery import Pattern, Circle, Vector, satin
	
	circle = Circle(Vector(20, 30), 10)
	pattern = Pattern()
	pattern.add_circle(circle, fill=satin)
	pattern.to_stitches()

but the user would do this through a series of GUI actions:

#. Create new file
#. Click add circle
#. Use the Settings dialog to alter the radius and center
#. Use the fill tool on circle
#. Select satin from the drop down menu

So EM2 does the job of bridging that gap.

Postscript Support
~~~~~~~~~~~~~~~~~~

In order to safely support user contributed/shared data that can define, for
example, double to double functions we need a consistent processor for these
descriptions.

Embroidermodder backends to the postscript interpreter included in libembroidery
to accomplish this.

For example the string: ``5 2 t mul add`` is equivalent to
the expression $2*t + 5$.

The benefit of not allowing this to simply be a Python expression is that it is safe against
malicious use, or accidental misuse. The program can identify whether the output is of the
appropriate form and give finitely many calculations before declaring the function to have run
too long (stopping equations that hang).

To see examples of this see the ``assets/shapes/*.ps`` files.

SVG Icons
~~~~~~~~~

To make the images easier to alter and restyle we could switch to svg icons.
There's some code in the git history to help with this.

The Actions System
~~~~~~~~~~~~~~~~~~

In order to simplify the development of a GUI that is flexible and easy to
understand to new developers we have a custom action system that all user
actions will go via an ``actuator`` that takes a string argument. By using a
string argument the undo history is just an array of strings.

The C ``action_hash_data`` struct will contain: the icon used, the
labels for the menus and tooltips and the function pointer for that action.
There will be an accompanying argument for this function call, currently being
drafted as ``action_call``. So when the user makes a function call it should
contain information like the mouse position, whether special key is pressed etc.

Accessibility
~~~~~~~~~~~~~

Software can be more or less friendly to people with dyslexia, partial
sightedness, reduced mobility and those who don't speak English. Embroidermodder
2 has, in its design, the following features to help:

#. icons for everything to reduce the amount of reading required
#. the system font is configurable: if you have a dyslexia-friendly font you
   can load it
#. the interface rescales to help with partial-sightedness
#. the system language is configurable, unfortunately the docs will only be
   in English but we can try to supply lots of images of the interface to make it
   easier to understand as a second language
#. buttons are remappable: XBox controllers are known for being good for
   people with reduced mobility so remapping the buttons to whatever setup you have
   should help

Note that most of these features will be released with version 2.1, which is planned for around
early 2023.

Sample Files
~~~~~~~~~~~~

Various sample embroidery design files can be found in the
``samples/`` folder.

Shortcuts
~~~~~~~~~

A shortcut can be made up of zero or more modifier keys and at least one non-modifier key
pressed at once.

To make this list quickly assessable, we can produce a list of hashes which are simply the
flags ORed together.

The shortcuts are stored in the csv file `shortcuts.csv` as a 5-column table
with the first 4 columns describing the key combination. This is loaded into
the shortcuts `TABLE`. Each tick the program checks the input state for this
combination by first translating the key names into indices for the key state,
then checking for whether all of them are set to true.

Removed Elements
~~~~~~~~~~~~~~~~

So I've had a few pieces of web infrastructure fail me recently and I think
it's worth noting. An issue that affects us is an issue that can effect people
who use our software.

Qt and dependencies
~~~~~~~~~~~~~~~~~~~

Downloading and installing Qt has been a pain for some users (46Gb on possibly
slow connections).

I'm switching to FreeGLUT 3 (which is a whole other conversation) which means
we can ship it with the source code package meaning only a basic build
environment is necessary to build it.

Social Platform
~~~~~~~~~~~~~~~

Github is giving me a server offline (500) error and is still giving a bad ping.

So... all the issues and project boards etc. being on Github is all well and
good assuming that we have our own copies. But we don't if Github goes down or
some other major player takes over the space and we have to move (again, since
this started on SourceForge).

This file is a backup for that which is why I'm repeating myself between them.

OpenGL
~~~~~~

OpenGL rendering within the application. This will allow for Realistic Visualization - Bump
Mapping/OpenGL/Gradients?

This should backend to a C renderer or something.

Configuration Data Ideas
~~~~~~~~~~~~~~~~~~~~~~~~

Embroidermodder should boot from the command line regardless of whether it is or is not
installed (this helps with testing and running on machines without root). Therefore, it can
create an initiation file but it won't rely on its existence to boot:
``~/.embroidermodder/config.json``.

#. Switch colors to be stored as 6 digit hexcodes with a hash symbol ``#``.
#. We've got close to a hand implemented ini read/write setup in `settings.py`.

Distribution
~~~~~~~~~~~~

.. index:: distribution

When we release the new pip wheel we should also package:

#. ``.tar.gz`` and ``.zip`` source archive.
#. Debian package
#. RPM package

Only do this once per minor version number.

.. todo::
   Screenshot a working draft to demonstrate.

Perennial Jobs
~~~~~~~~~~~~~~

#. Check for memory leaks
#. Clear compiler warnings on `-Wall -ansi -pedantic` for C.
#. Write new tests for new code.
#. Get Embroidermodder onto the current version of libembroidery.
#. PEP7 compliance.
#. Better documentation with more photos/screencaps.

Full Test Suite
~~~~~~~~~~~~~~~

.. index:: testing

(This needs a hook from Embroidermodder to embroider's full test suite.)

The flag ``--full-test-suite`` runs all the tests that have been written.
Since this results in a lot of output the details are both to stdout
and to a text file called ``test_matrix.txt``.

Patches that strictly improve the results in the \texttt{test\_matrix.txt} over
the current version will likely be accepted and it'll be a good place
to go digging for contributions. (Note: strictly improve means that
the testing result for each test is as good a result, if not better.
Sacrificing one critera for another would require some design work
before we would consider it.)

Symbols
~~~~~~~

.. index:: symbols

Symbols use the SVG path syntax.

In theory, we could combine the icons and symbols systems, since they could be
rendered once and stored as icons in Qt. (Or as textures in FreeGLUT.)

Also we want to render the patterns themselves using SVG syntax, so it would
save on repeated work overall.

Features
--------

Bindings
~~~~~~~~

.. index:: bindings

Bindings for libembroidery are maintained for the languages we use internally
in the project, for other languages we consider that the responsibility of
other teams using the library.

So libembroidery is going to be supported on:

.. index:: Android; iOS

#. ``C`` (by default)
#. ``C++`` (also by default)
#. ``Java`` (for the Android application MobileViewer)
#. ``Swift`` (for the iOS application iMobileViewer)

.. index:: csharp

For ``C#`` we recommend directly calling the function directly
using the DllImport feature:

	/* Calling readCsv() via C# as a native function. */
	[DllImport("libembroidery.so", EntryPoint="readCsv")]

see this StackOverflow discussion for help:
https://stackoverflow.com/questions/11425202/is-it-possible-to-call-a-c-function-from-c-net

For Python you can do the same using ctypes:
https://www.geeksforgeeks.org/how-to-call-a-c-function-in-python/

Other Supported Thread Brands
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. index:: supported threads

The thread lists that aren't preprogrammed into formats but are indexed in
the data file for the purpose of conversion or fitting to images/graphics.

#. Arc Polyester
#. Arc Rayon
#. Coats and Clark Rayon
#. Exquisite Polyester
#. Fufu Polyester
#. Fufu Rayon
#. Hemingworth Polyester
#. Isacord Polyester
#. Isafil Rayon
#. Marathon Polyester
#. Marathon Rayon
#. Madeira Polyester
#. Madeira Rayon
#. Metro Polyester
#. Pantone
#. Robison Anton Polyester
#. Robison Anton Rayon
#. Sigma Polyester
#. Sulky Rayon
#. ThreadArt Rayon
#. ThreadArt Polyester
#. ThreaDelight Polyester
#. Z102 Isacord Polyester

GUI Design
----------

.. index:: GUI

Embroidermodder 2 was written in C++/Qt5 and it was far too complex. We had
issues with people not able to build from source because the Qt5 libraries were
so ungainly. So I decided to do a rewrite in C/SDL2 (originally FreeGLUT, but
that was a mistake) with data stored as YAML. This means linking 4-7 libraries
depending on your system which are all well supported and widely available.

This is going well, although it's slow progress as I'm trying to keep track of
the design while also doing a ground up rewrite. I don't want to throw away good
ideas. Since I also write code for libembroidery my time is divided.

Overview of the UI rewrite

(Problems to be solved in brackets.)

It's not much to look at because I'm trying to avoid using an external
widgets system, which in turn means writing things like toolbars and menubars
over. If you want to get the design the actuator is the heart of it.

Without Qt5 we need a way of assigning signals with actions, so this is what
I've got: the user interacts with a UI element, this sends an integer to the
actuator that does the thing using the current state of the mainwindow struct
of which we expect there to be exactly one instance. The action is taken out
by a jump table that calls the right function (most of which are missing in
action and not connected up properly). It also logs the number, along with
key parts of the main struct in the undo history (an unsolved problem because
we need to decide how much data to copy over per action). This means undo,
redo and repeat actions can refer to this data.

About
-----

The Embroidermodder Project and Team
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The *Embroidermodder 2* project is a collection of small software
utilities for manipulating, converting and creating embroidery files in all
major embroidery machine formats. The program *Embroidermodder 2* itself
is a larger graphical user interface (GUI) which is at the heart of the project.

The tools and associated documents are:

#. The website https://www.libembroidery.org
#. This reference manual covering the development of all these projects with the current
   version available here: https://www.libembroidery.org/emrm_current.pdf
#. The GUI *Embroidermodder 2* covered in Chapter~\ref{GUI}.
#. The core library of low-level functions: `libembroidery`, covered in Chapter~\ref{libembroidery}
#. The CLI `embroider`, which is part of libembroidery
#. Mobile embroidery format viewers and tools convered in Chapter~\ref{Mobile}.
#. Specs for an open source hardware embroidery machine extension called the
   Portable Embroidery Tool (PET) which is also part of libembroidery. See Chapter~\ref{PET}.

The website, this manual and some scripts to construct the distribution are
maintained in \citep{thewebsite}.

They all tools to make the standard
user experience of working with an embroidery machine better without expensive
software which is locked to specific manufacturers and formats. But ultimately
we hope that the core *Embroidermodder 2* is a practical, ever-present tool in
larger workshops, small cottage industry workshops and personal hobbyist's
bedrooms.

Embroidermodder 2 is licensed under the zlib license and we aim to keep all of our tools open
source and free of charge. If you would like to support the project check out our  Open
Collective (https://opencollective.com/embroidermodder) group.
If you would like to help,
please join us on GitHub. This document is written as developer training as well helping new
users (see the last sections) so this is the place to learn how to start changing the code.

The Embroidermodder Team is the collection of people who've submitted
patches, artwork and documentation to our three projects.
The team was established by Jonathan Greig and Josh Varga.
The full list is actively maintained below.

Core Development Team
~~~~~~~~~~~~~~~~~~~~~

Embroidermodder 2:

#. Jonathan Greig (https://github.com/redteam316)
#. Josh Varga (https://github.com/JoshVarga)
#. Robin Swift (https://github.com/robin-swift)

Embroidermodder 1:

#. Josh Varga (https://github.com/JoshVarga)
#. Mark Pontius (http://sourceforge.net/u/mpontius/profile)

\input{planning.tex}

The Graphical User Interface: Embroidermodder 2.0.0-alpha
=========================================================

Overview
--------

Features
--------

Embroidermodder 2 has many advanced features that enable you to create awesome designs quicker, tweak existing designs to perfection, and can be fully customized to fit your workflow.

A summary of these features:

#. Cross Platform
#. Realistic rendering
#. Various grid types and auto-adjusting rulers
#. Many measurement tools
#. Add text to any design
#. Supports many formats
#. Batch Conversion
#. Scripting API

Cross Platform
~~~~~~~~~~~~~~

If you use multiple operating systems, it's important to choose software that works on all of them.

Embroidermodder 2 runs on Windows, Linux and Mac OS X. Let's not forget the Raspberry Pi (http://www.raspberrypi.org).

.. image::
   _static/images/features-platforms-1.png

Realistic Rendering
~~~~~~~~~~~~~~~~~~~

It is important to be able to visualize what a design will look like when stitched and our pseudo ``3D`` realistic rendering helps achieve this.

Realistic rendering sample \#1:

.. image::
   _static/images/features-realrender-1.png

Realistic rendering sample \#2:

.. image::
   _static/images/features-realrender-2.png

Realistic rendering sample \#3:

.. image::
   _static/images/features-realrender-3.png

Various grid types and auto-adjusting rulers

Making use of the automatically adjusting ruler in conjunction with the grid will ensure your design is properly sized and fits within your embroidery hoop area.

Use rectangular, circular or isometric grids to construct your masterpiece!

Multiple grids and rulers in action:

.. image::
   _static/images/features-grid-ruler-1.png

Many measurement tools
~~~~~~~~~~~~~~~~~~~~~~

Taking measurements is a critical part of creating great designs. Whether you are designing mission critical embroidered space suits for NASA or some other far out design for your next meet-up, you will have precise measurement tools at your command to make it happen. You can locate individual points or find distances between any 2 points anywhere in the design!

Take quick and accurate measurements:

.. image::
   images/features-measure-1.png

Add text to any design
~~~~~~~~~~~~~~~~~~~~~~

Need to make company apparel for all of your employees with individual names on them? No sweat. Just simply add text to your existing design or create one from scratch, quickly and easily.
Didn't get it the right size or made a typo? No problem. Just select the text and update it with the property editor.

Add text and adjust its properties quickly:

.. image::
   images/features-text-1.png

Supports many formats
~~~~~~~~~~~~~~~~~~~~~

Embroidery machines all accept different formats. There are so many formats available that it can sometimes be confusing whether a design will work with your machine.

Embroidermodder 2 supports a wide variety of embroidery formats as well as several vector formats, such as SVG and DXF. This allows you to worry less about which designs you can use.

Batch Conversion
~~~~~~~~~~~~~~~~

Need to send a client several different formats? Just use libembroidery-convert, our command line utility which supports batch file conversion.

There are a multitude of formats to choose from:

.. image::
   _static/images/features-formats-1.png

Scripting API
~~~~~~~~~~~~~

If you've got programming skills and there is a feature that isn't currently available that you absolutely cannot live without, you have the capability to create your own custom commands for Embroidermodder 2. We provide an QtScript API which exposes various application functionality so that it is possible to extend the application without requiring a new release. If you have created a command that you think is worth including in the next release, just <a href=``contact.html``>contact us</a> and we will review it for functionality, bugs, and finally inclusion.

An Embroidermodder 2 command excerpt:

.. image::
   _static/images/features-scripting-1.png

Contributing
------------

Version Control
~~~~~~~~~~~~~~~

Being an open source project, developers can grab the latest code at any time
and attempt to build it themselves. We try our best to ensure that it will build smoothly
at any time, although occasionally we do break the build. In these instances,
please provide a patch, pull request which fixes the issue or open an issue and
notify us of the problem, as we may not be aware of it and we can build fine.

Try to group commits based on what they are related to: features/bugs/comments/graphics/commands/etc...

See the coding style ref (coding-style)


\subsection{Ideas}

Why this document
~~~~~~~~~~~~~~~~~

I've been trying to make this document indirectly through the Github
issues page and the website we're building but I think a
straightforward, plain-text file needs to be the ultimate backup for
this. Then I can have a printout while I'm working on the project.

googletests
~~~~~~~~~~~

gtests are non-essential, testing is for developers not users so we can
choose our own framework. I think the in-built testing for libembroidery
was good and I want to re-instate it.

Qt and dependencies
~~~~~~~~~~~~~~~~~~~

I'm switching to SDL2 (which is a whole other conversation) which means
we can ship it with the source code package meaning only a basic build
environment is necessary to build it.

Documentation
~~~~~~~~~~~~~

Can we treat the website being a duplicate of the docs a non-starter?
I'd be happier with tex/pdf only and (I know this is counter-intuitive)
one per project.

Social Platform
~~~~~~~~~~~~~~~

So... all the issues and project boards etc. being on Github is all well
and good assuming that we have our own copies. But we don't if Github goes
down or some other major player takes over the space and we have to move
(again, since this started on SourceForge).

This file is a backup for that which is why I'm repeating myself between them.

JSON data Ideas
~~~~~~~~~~~~~~~

So:

#. Port `settings.ini` to `settings.json`.
#. Place `settings.json` in `\$HOME/.embroidermodder` (or equivalent, see the homedir function in \texttt{gui.c}).
#. Parse JSON using cJSON (we have the new parseJSON function).
#. Better structure for settings data so parse and load JSON is easier and
   there's less junk in global variables. A structure similar to a
#. Python dict that uses constants like the sketch below.

Why JSON over ini?
~~~~~~~~~~~~~~~~~~

#. We need to hand-write \emph{a} system because the current system is Qt dependent anyway.
#. This way we can store more complex data structures in the same system including the layout of the widgets which may be user configured (see Blender and GIMP).
#. Also it's easier to share information formatted this way between systems because most systems us JSON or XML data: there's better support for converting complex data this way.

Sketch of a settings system
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. literalinclude:: examples/settings\_system.c

This would all be in C, and wouldn't rely on Qt at all. We already use a
system like this in `libembroidery` so hopefully devs on both
would get the pattern.

