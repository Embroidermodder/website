Ideas
-----

\input{ideas.tex}


Current Work
~~~~~~~~~~~~

#. Converting C++ to Python throughout.
#. OpenGL Rendering
  #. ``Real`` rendering to see what the embroidery looks like.
  #. Icons and toolbars.
  #. Menu bar
#. Libembroidery interfacing:
  #. Get all classes to use the proper libembroidery types within them. So `Ellipse` has `EmbEllipse` as public data within it.
#. Move calculations of rotation and scaling into `EmbVector` calls.
#. Get undo history widget back (BUG).
#. Switch website to a CMake build.
#. GUI frontend for embroider features that aren't supported by embroidermodder: flag selector from a table
#. Update all formats without color to check for edr or rgb files.
#. EmbroideryFLOSS - Color picker that displays catalog numbers and names
#. Setting for reverse scrolling direction (for zoom, vertical pan)
#. Stitching simulation
#. User designed custom fill
#. Keyboard zooming, panning
#. Advanced printing
#. Libembroidery 1.0
#. Better integrated help: I don't think the help should backend to a html file somewhere on the user's system. A better system would be a custom widget within the program that's searchable.
#. New embroidermodder2.ico 16x16 logo that looks good at that scale.
#. saving dst, pes, jef
#. Settings dialog: notify when the user is switching tabs that the setting has been changed, adding apply button is what would make sense for this to happen.
#. Update language translations
#. Replace KDE4 thumbnailer.
#. Import raster image
#. Statistics from 1.0, needs histogram.
#. SNAP/ORTHO/POLAR
#. Cut/copy allow post-selection
#. Layout into config
#. Notify user of data loss if not saving to an object format.
#. Add which formats to work with to preferences.
#. Cannot open file with \# in the name when opening multiple files but works with opening a single file.
#. Closing settings dialog with the X in the window saves settings rather than discarding them.
#. Otto theme icons: units, render, selectors, what's this icon doesn't scale
#. Layer manager and Layer switcher dock widget
#. test that all formats read data in correct scale (format details should match other programs).
#. Custom filter bug -- doesn't save changes in some cases.
#. Get flake8, pylint and tests to pass.
#. Sphinx documentation from docstrings or similar.

For more details read on into the Design section.

