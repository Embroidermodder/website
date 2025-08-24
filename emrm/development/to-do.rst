To Do
=====

These should be sorted into relevant code sections.

## Finished (abbreviate for changelog)

* The `EmbPattern *pattern` as a variable in the `View` class.
* Load/Save Menu/Toolbars configurations to data files.

## Current work

* Removing the now unnecessary `SaveObject` class.
* Converting all comments to C style.
* Switching away from Doxygen-style in favour of direct commentary and a custom written reference manual.
* Move calculations of rotation and scaling into `EmbVector` calls.
* Libembroidery interfacing: get all classes to use the proper libembroidery types within them. So `Ellipse` has `EmbEllipse` as public data within it.
* Setting for reverse scrolling direction (for zoom, vertical pan)
* Tools to find common problems in the source code and suggest fixes to the developers. For example, a translation miss: that is, for any language other than English a missing entry in the translation table should supply a clear warning to developers.

## libembroidery

* looping test that reads 10 times while running valgrind. See ``embPattern\_loadExternalColorFile()`` Arduino leak note for more info.
* Test that all formats read data in correct scale (format details should match other programs).

### embroider

* libembroidery-composer like app that combines multiple files into one.

## Arduino

* Fix emb-outline files
* Fix thread-color files
* Logging of Last Stitch Location to External USB Storage(commonly available and easily replaced), wait until TRE is available to avoid rework
* inotool.org - seems like the logical solution for Nightly/CI builds
* Smoothieboard experiments


Documentation
~~~~~~~~~~~~~

#. PDF, A4 and US letter format output option
#. The ability to add pages such as the copyright page and dedication page which
  only appear in the print version.

Embroidermodder
~~~~~~~~~~~~~~~

Beta
++++

#. Libembroidery 1.0.
#. Better integrated help: I don't think the help should backend to a
  html file somewhere on the user's system. A better system would be a
  custom widget within the program that's searchable.
#. EmbroideryFLOSS - Color picker that displays catalog numbers and names.
#. Custom filter bug -- doesn't save changes in some cases.
#. Advanced printing.
#. Stitching simulation.

2.x/ideas
+++++++++

#. User designed custom fill.

Arduino
~~~~~~~

#. Fix emb-outline files
#. Fix thread-color files
#. Logging of Last Stitch Location to External USB Storage(commonly available and easily replaced) ...wait until TRE is available to avoid rework
#. inotool.org - seems like the logical solution for Nightly/CI builds
#. Smoothieboard experiments

Testing
~~~~~~~

#. looping test that reads 10 times while running valgrind.
   See ``embPattern\_loadExternalColorFile()`` Arduino leak note for more info.


Issues
------

Fix before Version 2
~~~~~~~~~~~~~~~~~~~~

So I've had a few pieces of web infrastructure fail me recently and I
think it's worth noting. An issue that affects us is an issue that can
effect people who use our software.

#. Googletests require a web connection to update and they update on each compilation.
#. Downloading and installing Qt has been a pain for some users (46Gb on possibly slow connections). I think it was davieboy64?
#. The documentation is, well better in that it's housed in the main repository, but I'm not a fan of the ``write once build many`` approach as it means trying to weigh up how 3 versions are going to render.
#. Github is giving me a server offline (500) error and is still giving a bad ping.
#. OpenGL rendering within the application. This will allow for Realistic Visualization - Bump Mapping/OpenGL/Gradients?
#. JSON configuration (Started, see \texttt{head -n 50 src/mainwindow.cpp}.) Ok this is changing slightly. embroidermodder should boot from the command line regardless of whether it is or is not installed (this helps with testing and running on machines without root). Therefore, it can create an initiation file but it won't rely on its existence to boot: this is what we currently do with settings.ini.
#. Get undo history widget back (BUG).
#. Switch website to a CMake build.
#. Mac Bundle, .tar.gz and .zip source archive.
#. NSIS installer for Windows, Debian package, RPM package
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
#. Otto theme icons: units, render, selectors, what's this icon doesn't  scale
#. Layer manager and Layer switcher dock widget
#. Test that all formats read data in correct scale (format details should match other programs).
#. Custom filter bug -- doesn't save changes in some cases.

Fix for Version 2.1
~~~~~~~~~~~~~~~~~~~

Fix eventually
~~~~~~~~~~~~~~

Issues
~~~~~~

Fix before Version 2
++++++++++++++++++++

So I've had a few pieces of web infrastructure fail me recently and I
think it's worth noting. An issue that affects us is an issue that can
effect people who use our software.

#. Googletests require a web connection to update and they update on each
      compilation.
#. Downloading and installing Qt has been a pain for some users (46Gb on
      possibly slow connections). I think it was davieboy64?
#. Github is giving me a server offline (500) error and is still giving a bad
      ping.
#. OpenGL rendering within the application. This will allow for Realistic
      Visualization - Bump Mapping/OpenGL/Gradients?
#. JSON configuration (Started, see \texttt{head\ -n\ 50\ src/mainwindow.cpp.})
      Ok this is changing slightly. embroidermodder should boot from the command
      line regardless of whether it is or is not installed (this helps with
      testing and running on machines without root). Therefore, it can create
      an initiation file but it won't rely on its existence to boot: this is
      what we currently do with settings.ini.
#. Get undo history widget back (BUG).
* Switch website to a CMake build.
* Mac Bundle, .tar.gz and .zip source archive.
* NSIS installer for Windows, Debian package, RPM package
* GUI frontend for embroider features that aren't supported by  embroidermodder: flag selector from a table
* Update all formats without color to check for edr or rgb files.
* EmbroideryFLOSS - Color picker that displays catalog numbers and names
* Setting for reverse scrolling direction (for zoom, vertical pan)
* Stitching simulation
* User designed custom fill
* Keyboard zooming, panning
* Advanced printing
* Libembroidery 1.0
* Better integrated help: I don't think the help should backend to a html file somewhere on the user's system. A better system would be a custom widget within the program that's searchable.
* New embroidermodder2.ico 16x16 logo that looks good at that scale.
* saving dst, pes, jef
* Settings dialog: notify when the user is switching tabs that the setting has been changed, adding apply button is what would make sense for this to happen.
* Update language translations
* Replace KDE4 thumbnailer.
* Import raster image
* Statistics from 1.0, needs histogram.
* SNAP/ORTHO/POLAR
* Cut/copy allow post-selection
* Layout into config
* Notify user of data loss if not saving to an object format.
* Add which formats to work with to preferences.
* Cannot open file with \# in the name when opening multiple files but  works
  with opening a single file.
* Closing settings dialog with the X in the window saves settings rather than discarding them.
* Otto theme icons: units, render, selectors, what's this icon doesn't scale
* Layer manager and Layer switcher dock widget
*  test that all formats read data in correct scale (format details should match other programs).
* Custom filter bug -- doesn't save changes in some cases.

Fix for Version 2.1
+++++++++++++++++++

Fix eventually
++++++++++++++


## Documentation

* Document all tests.
* Automation of tests.
* Ensure that the stitch count matches what we know the file has
* Fix repeats in this todo file.

## 2.0 alpha1

* WIP - Statistics from 1.0, needs histogram
* WIP - Saving DST/PES/JEF (varga)
* WIP - Saving CSV/SVG (rt) + CSV read/write UNKNOWN interpreted as COLOR bug
* Keyboard zooming, panning

## 2.0 alpha2

* Notify user of data loss if not saving to an object format.
* Import Raster Image
* SNAP/ORTHO/POLAR
* Layer Manager + LayerSwitcher DockWidget
* Reading DXF

## 2.0 alpha3

* Writing DXF
* (DONE) Up and Down keys cycle thru commands in the command prompt
* Amount of Thread and Machine Time Estimation (also allow customizable times for setup, color changes, manually trimming jump threads, etc. that way a realistic total time can be estimated)
* Otto Theme Icons - whatsthis icon doesn't scale well, needs redone
* embroidermodder2.ico 16 x 16 looks horrible

## 2.0 alpha4

* WIP - CAD Command: Arc (rt)

## 2.0 beta1

* Custom Filter Bug - doesn't save changes in some cases
* Cannot open file with \# in name when opening multiple files (works fine when opening the single file)
* Closing Settings Dialog with the X in the window saves settings rather than discards them
* WIP - Advanced Printing
* Filling Algorithms (varga)
* Otto Theme Icons - beta (rt) - Units, Render, Selectors
* Cut/copy allow post-selection.
* Layout into config.
* Add which formats to work with to preferences.
* Layer manager and Layer switcher dock widget.
* Custom filter bug -- doesn't save changes in some cases.
* GUI frontend for embroider features that aren't supported by embroidermodder: flag selector from a table
* Update all formats without color to check for edr or rgb files.
* Better integrated help: I don't think the help should backend to a html file somewhere on the user's system. A better system would be a custom widget within the program that's searchable.
* Settings dialog: notify when the user is switching tabs that the setting has been changed, adding apply button is what would make sense for this to happen.

## 2.0 rc1

* Review KDE4 Thumbnailer
* Documentation for libembroidery and formats
* HTML Help files
* Update language translations
* CAD Command review: line
* CAD Command review: circle
* CAD Command review: rectangle
* CAD Command review: polygon
* CAD Command review: polyline
* CAD Command review: point
* CAD Command review: ellipse
* CAD Command review: arc
* CAD Command review: distance
* CAD Command review: locatepoint
* CAD Command review: move
* CAD Command review: rgb
* CAD Command review: rotate
* CAD Command review: scale
* CAD Command review: singlelinetext
* CAD Command review: star
* Clean up all compiler warning messages, right now theres plenty :P

TODO - QDoc Comments

## 2.0 release

* tar.gz archive
* zip archive
* Debian Package (rt)
* NSIS Installer (rt)
* Mac Bundle?
* press release

## 2.x/Ideas

* libembroidery.mk for MXE project (refer to qt submodule packages for qmake based building. Also refer to plibc.mk for example of how write an update macro for github.)
* libembroidery safeguard for all writers - check if the last stitch is an END stitch. If not, add an end stitch in the writer and modify the header data if necessary.
* Cut/Copy - Allow Post-selection
* CAD Command: Array
* CAD Command: Offset
* CAD Command: Extend
* CAD Command: Trim
* CAD Command: BreakAtPoint
* CAD Command: Break2Points
* CAD Command: Fillet
* CAD Command: Chamfer
* CAD Command: Split
* CAD Command: Area
* CAD Command: Time
* CAD Command: PickAdd
* CAD Command: Product
* CAD Command: Program
* CAD Command: ZoomFactor
* CAD Command: GripHot
* CAD Command: GripColor and GripCool
* CAD Command: GripSize
* CAD Command: Highlight
* CAD Command: Units
* CAD Command: Grid
* CAD Command: Find
* CAD Command: Divide
* CAD Command: ZoomWindow (Move out of view.cpp)
* Command: Web (Generates Spiderweb patterns)
* Command: Guilloche (Generates Guilloche patterns)
* Command: Celtic Knots
* Command: Knotted Wreath
* Lego Mindstorms NXT/EV3 ports and/or commands.
* native function that flashes the command prompt to get users attention when using the
prompt is required for a command.
* Settings Dialog, it would be nice to have it notify you when switching tabs that a
setting has been changed. Adding an Apply button is what would make sense for this to happen.
* Keyboard Zooming/Panning
* G-Code format?
* 3D Raised Embroidery
* Gradient Filling Algorithms
* Stitching Simulation
* RPM packages?
* Reports?
* Record and Playback Commands
* Settings option for reversing zoom scrolling direction
* Qt GUI for libembroidery-convert
* EPS format? Look at using Ghostscript as an optional add-on to libembroidery
* optional compile option for including LGPL/GPL libs etc. with warning to user about license requirements.
* Realistic Visualization - Bump Mapping/OpenGL/Gradients?
* Stippling Fill
* User Designed Custom Fill
* Honeycomb Fill
* Hilburt Curve Fill
* Sierpinski Triangle fill
* Circle Grid Fill
* Spiral Fill
* Offset Fill
* Brick Fill
* Trim jumps over a certain length.
* FAQ about setting high number of jumps for more controlled trimming.
* Minimum stitch length option. (Many machines also have this option too)
* Add 'Design Details' functionality to libembroidery-convert
* Add 'Batch convert many to one format' functionality to libembroidery-convert
* EmbroideryFLOSS - Color picker that displays catalog numbers and names.
* emscripten/javascript port of libembroidery


@node Current work

@enumerate
#. `EmbPattern *pattern` as a variable in the `View` class.

#. Removing the now unnecessary `SaveObject` class.

#. Converting all comments to C style.

#. Switching away from Doxygen-style in favour of direct commentary and a custom written reference manual.
@end enumerate

@node Arduino To-Do

@enumerate
#. Fix emb-outline files

#. Fix thread-color files

#. Logging of Last Stitch Location to External USB Storage(commonly available and easily replaced), wait until TRE is available to avoid rework

#. inotool.org - seems like the logical solution for Nightly/CI builds

#. Smoothieboard experiments
@end enumerate

@node libembroidery-tests To-Do

@enumerate
#. looping test that reads 10 times while running valgrind. See \texttt embPattern\_loadExternalColorFile() Arduino leak note for more info.
@end enumerate

@node Documentation To-Do

@enumerate
#. Document all tests.
#. Automation of tests.
#. Ensure that the stitch count matches what we know the file has
@end enumerate

@node Embroidermodder and Libembroidery To-Do

@node 2.0 alpha1

@enumerate
#. WIP - Statistics from 1.0, needs histogram
#. WIP - Saving DST/PES/JEF (varga)
#. WIP - Saving CSV/SVG (rt) + CSV read/write UNKNOWN interpreted as COLOR bug
@end enumerate

@node 2.0 alpha2

@enumerate
#. Notify user of data loss if not saving to an object format.
#. Import Raster Image
#. SNAP/ORTHO/POLAR
#. Layer Manager + LayerSwitcher DockWidget
#. Reading DXF
@end enumerate

@node 2.0 alpha3

@enumerate
#. Writing DXF
#. Up and Down keys cycle thru commands in the command prompt
#. Amount of Thread and Machine Time Estimation (also allow customizable times for setup, color changes, manually trimming jump threads, etc. that way a realistic total time can be estimated)
#. Otto Theme Icons - whatsthis icon doesn't scale well, needs redone
#. embroidermodder2.ico 16 x 16 looks horrible
@end enumerate

@node 2.0 alpha4

@enumerate
#. WIP - CAD Command: Arc (rt)
#. Load/Save Menu/Toolbars configurations into settings.ini
@end enumerate

@node 2.0 beta1

@enumerate
#. Custom Filter Bug - doesn't save changes in some cases
#. Cannot open file with \# in name when opening multiple files (works fine when opening the single file)
#. Closing Settings Dialog with the X in the window saves settings rather than discards them
#. WIP - Advanced Printing
#. Filling Algorithms (varga)
#. Otto Theme Icons - beta (rt) - Units, Render, Selectors
@end enumerate

@node 2.0 rc1

@enumerate
#. QDoc Comments
#. Review KDE4 Thumbnailer
#. Documentation for libembroidery and formats
#. HTML Help files
#. Update language translations
#. CAD Command review: line
#. CAD Command review: circle
#. CAD Command review: rectangle
#. CAD Command review: polygon
#. CAD Command review: polyline
#. CAD Command review: point
#. CAD Command review: ellipse
#. CAD Command review: arc
#. CAD Command review: distance
#. CAD Command review: locatepoint
#. CAD Command review: move
#. CAD Command review: rgb
#. CAD Command review: rotate
#. CAD Command review: scale
#. CAD Command review: singlelinetext
#. CAD Command review: star
#. Clean up all compiler warning messages, right now theres plenty :P
@end enumerate

@node 2.0 release

@enumerate
#. tar.gz archive
#. zip archive
#. Debian Package (rt)
#. NSIS Installer for Windows (rt)
#. RPM package
#. Mac Bundle?
#. press release
@end enumerate

@node 2.x/Ideas

@enumerate
#. Cut/copy allow post-selection.
#. Layout into config.
#. beta
#. Get undo history widget back (BUG).
#. GUI frontend for embroider features that aren't supported by embroidermodder: flag selector from a table
#. Update all formats without color to check for edr or rgb files.
#. Setting for reverse scrolling direction (for zoom, vertical pan)
#. New embroidermodder2.ico 16x16 logo that looks good at that scale.
#. Saving dst, pes, jef.
#. Trim jumps over a certain length.
#. FAQ about setting high number of jumps for more controlled trimming.
#. Minimum stitch length option. (Many machines also have this option too)
#. Add 'Design Details' functionality to libembroidery-convert
#. Add 'Batch convert many to one format' functionality to libembroidery-convert
#. EmbroideryFLOSS - Color picker that displays catalog numbers and names.
#. Settings dialog: notify when the user is switching tabs that the setting has been changed, adding apply button is what would make sense for this to happen.
#. Update language translations.
#. Replace KDE4 thumbnailer.
#. Import raster image.
#. Notify user of data loss if not saving to an object format.
#. Add which formats to work with to preferences.
#. Cannot open file with `\#` in the name when opening multiple files but works with opening a single file.
#. Closing settings dialog with the X in the window saves settings rather than discarding them.
#. Otto theme icons: units, render, selectors, what's this icon doesn't scale.
#. Layer manager and Layer switcher dock widget.
#. Test that all formats read data in correct scale (format details should match other programs).
#. Custom filter bug -- doesn't save changes in some cases.
#. Tools to find common problems in the source code and suggest fixes to the developers. For example, a translation miss: that is, for any language other than English a missing entry in the translation table should supply a clear warning to developers.
#. Converting Qt C++ version to native GUI C throughout.
#. OpenGL Rendering: `Real` rendering to see what the embroidery looks like, Icons and toolbars, Menu bar.
#. Libembroidery interfacing: get all classes to use the proper libembroidery types within them. So `Ellipse` has `EmbEllipse` as public data within it.
#. Move calculations of rotation and scaling into `EmbVector` calls.
#. GUI frontend for embroider features that aren't supported by embroidermodder: flag selector from a table
#. Update all formats without color to check for edr or rgb files.
#. Setting for reverse scrolling direction (for zoom, vertical pan)
#. Better integrated help: I don't think the help should backend to a html file somewhere on the user's system. A better system would be a custom widget within the program that's searchable.
@end enumerate

@enumerate
#. libembroidery.mk for MXE project (refer to qt submodule packages for qmake based
    building. Also refer to plibc.mk for example of how write an update macro for
    github.)
#. libembroidery safeguard for all writers - check if the last stitch is an END
    stitch. If not, add an end stitch in the writer and modify the header data if
    necessary.
#. Cut/Copy - Allow Post-selection
#. CAD Command: Array
#. CAD Command: Offset
#. CAD Command: Extend
#. CAD Command: Trim
#. CAD Command: BreakAtPoint
#. CAD Command: Break2Points
#. CAD Command: Fillet
#. CAD Command: Chamfer
#. CAD Command: Split
#. CAD Command: Area
#. CAD Command: Time
#. CAD Command: PickAdd
#. CAD Command: Product
#. CAD Command: Program
#. CAD Command: ZoomFactor
#. CAD Command: GripHot
#. CAD Command: GripColor and GripCool
#. CAD Command: GripSize
#. CAD Command: Highlight
#. CAD Command: Units
#. CAD Command: Grid
#. CAD Command: Find
#. CAD Command: Divide
#. CAD Command: ZoomWindow (Move out of view.cpp)
#. Command: Web (Generates Spiderweb patterns)
#. Command: Guilloche (Generates Guilloche patterns)
#. Command: Celtic Knots
#. Command: Knotted Wreath
#. Lego Mindstorms NXT/EV3 ports and/or commands.
#. native function that flashes the command prompt to get users attention when
    using the prompt is required for a command.
#. libembroidery-composer like app that combines multiple files into one.
#. Settings Dialog, it would be nice to have it notify you when switching tabs that
    a setting has been changed. Adding an Apply button is what would make sense for
    this to happen.
#. Keyboard Zooming/Panning
#. G-Code format?
#. 3D Raised Embroidery
#. Gradient Filling Algorithms
#. Stitching Simulation
#. RPM packages?
#. Reports?
#. Record and Playback Commands
#. Settings option for reversing zoom scrolling direction
#. Qt GUI for libembroidery-convert
#. EPS format? Look at using Ghostscript as an optional add-on to libembroidery...
#. optional compile option for including LGPL/GPL libs etc. with warning to user
    about license requirements.
#. Realistic Visualization - Bump Mapping/OpenGL/Gradients?
#. Stippling Fill
#. User Designed Custom Fill
#. Honeycomb Fill
#. Hilbert Curve Fill
#. Sierpinski Triangle fill
#. Circle Grid Fill
#. Spiral Fill
#. Offset Fill
#. Brick Fill
#. Trim jumps over a certain length.
#. FAQ about setting high number of jumps for more controlled trimming.
#. Minimum stitch length option. (Many machines also have this option too)
#. Add 'Design Details' functionality to libembroidery-convert
#. Add 'Batch convert many to one format' functionality to libembroidery-convert
#. EmbroideryFLOSS - Color picker that displays catalog numbers and names.
#. emscripten/javascript port of libembroidery
@end enumerate

@enumerate
#. todo sort todo list.
#. beta
#. Custom Filter Bug - doesn't save changes in some cases
#. Cannot open file with `\#` in name when opening multiple files (works fine when opening the single file)
#. Closing Settings Dialog with the X in the window saves settings rather than discards them
#. Advanced Printing
#. Filling Algorithms (varga)
#. Otto Theme Icons - beta (rt) - Units, Render, Selectors
#. 2.x/Ideas
#. libembroidery.mk for MXE project (refer to qt submodule packages for qmake based building. Also refer to plibc.mk for example of how write an update macro for github.)
#. libembroidery safeguard for all writers - check if the last stitch is an END stitch. If not, add an end stitch in the writer and modify the header data if necessary.
#. Cut/Copy - Allow Post-selection
#. optional compile option for including LGPL/GPL libs etc... with warning to user about license requirements.
#. Realistic Visualization - Bump Mapping/OpenGL/Gradients?
#. Trim jumps over a certain length.
#. FAQ about setting high number of jumps for more controlled trimming.
#. Minimum stitch length option. (Many machines also have this option too)
#. Add 'Design Details' functionality to libembroidery-convert
#. Add 'Batch convert many to one format' functionality to libembroidery-convert
#. EmbroideryFLOSS - Color picker that displays catalog numbers and names.
#. beta
#. Realistic Visualization - Bump Mapping/OpenGL/Gradients?
#. Get undo history widget back (BUG).
#. Mac Bundle, .tar.gz and .zip source archive.
#. GUI frontend for embroider features that aren't supported by embroidermodder: flag selector from a table
#. Update all formats without color to check for edr or rgb files.
#. Setting for reverse scrolling direction (for zoom, vertical pan)
#. Keyboard zooming, panning
#. New embroidermodder2.ico 16x16 logo that looks good at that scale.
#. Saving dst, pes, jef.
#. Settings dialog: notify when the user is switching tabs that the setting has been changed, adding apply button is what would make sense for this to happen.
#. Update language translations.
#. Replace KDE4 thumbnailer.
#. Import raster image.
#. Statistics from 1.0, needs histogram.
#. SNAP/ORTHO/POLAR.
#. Cut/copy allow post-selection.
#. Layout into config.
#. Notify user of data loss if not saving to an object format.
#. Add which formats to work with to preferences.
#. Cannot open file with `\#` in the name when opening multiple files but works with opening a single file.
#. Closing settings dialog with the X in the window saves settings rather than discarding them.
#. Otto theme icons: units, render, selectors, what's this icon doesn't scale.
#. Layer manager and Layer switcher dock widget.
#. Test that all formats read data in correct scale (format details should match other programs).
#. Custom filter bug -- doesn't save changes in some cases.
#. Tools to find common problems in the source code and suggest fixes to the developers. For example, a translation miss: that is, for any language other than English a missing entry in the translation table should supply a clear warning to developers.
#. Converting Qt C++ version to native GUI C throughout.
#. OpenGL Rendering: `Real` rendering to see what the embroidery looks like, Icons and toolbars, Menu bar.
#. Libembroidery interfacing: get all classes to use the proper libembroidery types within them. So `Ellipse` has `EmbEllipse` as public data within it.
#. Move calculations of rotation and scaling into `EmbVector` calls.
#. GUI frontend for embroider features that aren't supported by embroidermodder: flag selector from a table
#. Update all formats without color to check for edr or rgb files.
#. Setting for reverse scrolling direction (for zoom, vertical pan)
#. Keyboard zooming, panning
#. Better integrated help: I don't think the help should backend to a html file somewhere on the user's system. A better system would be a custom widget within the program that's searchable.
#. New embroidermodder2.ico 16x16 logo that looks good at that scale.
#. Settings dialog: notify when the user is switching tabs that the setting has been changed, adding apply button is what would make sense for this to happen.
@end enumerate

# To Do

## Current work

1. `EmbPattern *pattern` as a variable in the `View` class.
2. Removing the now unnecessary `SaveObject` class.
3. Converting all comments to C style.
4. Switching away from Doxygen-style in favour of direct commentary and a custom written reference manual.

## Documentation

* Document all tests.
* Automation of tests.
* Ensure that the stitch count matches what we know the file has

### 2.x/Ideas

* Cut/Copy - Allow Post-selection
* CAD Command: Array
* CAD Command: Offset
* CAD Command: Extend
* CAD Command: Trim
* CAD Command: BreakAtPoint
* CAD Command: Break2Points
* CAD Command: Fillet
* CAD Command: Chamfer
* CAD Command: Split
* CAD Command: Area
* CAD Command: Time
* CAD Command: PickAdd
* CAD Command: Product
* CAD Command: Program
* CAD Command: ZoomFactor
* CAD Command: GripHot
* CAD Command: GripColor and GripCool
* CAD Command: GripSize
* CAD Command: Highlight
* CAD Command: Units
* CAD Command: Grid
* CAD Command: Find
* CAD Command: Divide
* CAD Command: ZoomWindow (Move out of view.cpp)
* native function that flashes the command prompt to get users attention when using the prompt is required for a command.
* libembroidery-composer like app that combines multiple files into one.
* Settings Dialog, it would be nice to have it notify you when switching tabs that a setting has been changed. Adding an Apply button is what would make sense for this to happen.
* Keyboard Zooming/Panning
* G-Code format?
* 3D Raised Embroidery
* Gradient Filling Algorithms
* Stitching Simulation
* RPM packages?
* Reports?
* Record and Playback Commands
* Settings option for reversing zoom scrolling direction
* Qt GUI for libembroidery-convert
* EPS format? Look at using Ghostscript as an optional add-on to libembroidery
* optional compile option for including LGPL/GPL libs etc. with warning to user about license requirements.
* Realistic Visualization - Bump Mapping/OpenGL/Gradients?
* Trim jumps over a certain length.
* FAQ about setting high number of jumps for more controlled trimming.
* Minimum stitch length option. (Many machines also have this option too)
* Add 'Design Details' functionality to libembroidery-convert
* Add 'Batch convert many to one format' functionality to libembroidery-convert
* EmbroideryFLOSS - Color picker that displays catalog numbers and names.
* emscripten/javascript port of libembroidery

### Arduino

* Fix emb-outline files
* Fix thread-color files
* Logging of Last Stitch Location to External USB Storage(commonly available and easily replaced), wait until TRE is available to avoid rework
* inotool.org - seems like the logical solution for Nightly/CI builds
* Smoothieboard experiments

### libembroidery-tests

* looping test that reads 10 times while running valgrind. See ``embPattern\_loadExternalColorFile()`` Arduino leak note for more info.

@enumerate
* todo sort todo list.
#. Alpha: low priority
#. Writing DXF#. Up and Down keys cycle thru commands in the command prompt
#. Amount of Thread, Machine Time Estimation (also allow customizable times for setup, color changes, manually trimming jump threads, etc...that way a realistic total time can be estimated)
#. Otto Theme Icons - whatsthis icon doesn't scale well, needs redone
#. embroidermodder2.ico 16 x 16 looks horrible
#. Alpha: lower priority
#. CAD Command: Arc (rt)
#. beta
#. Custom Filter Bug - doesn't save changes in some cases
#. Cannot open file with `\#` in name when opening multiple files (works fine when opening the single file)
#. Closing Settings Dialog with the X in the window saves settings rather than discards them
#. Advanced Printing
#. Filling Algorithms (varga)
#. Otto Theme Icons - beta (rt) - Units, Render, Selectors
#. 2.0
#. tar.gz archive
#. zip archive
#. Debian Package (rt)
#. NSIS Installer (rt)
#. Mac Bundle?
#. press release
#. 2.x/Ideas
#. libembroidery.mk for MXE project (refer to qt submodule packages for qmake based building. Also refer to plibc.mk for example of how write an update macro for github.)
#. libembroidery safeguard for all writers - check if the last stitch is an END stitch. If not, add an end stitch in the writer and modify the header data if necessary.
#. Cut/Copy - Allow Post-selection
#. CAD Command: Array
#. CAD Command: Offset
#. CAD Command: Extend
#. CAD Command: Trim
#. CAD Command: BreakAtPoint
#. CAD Command: Break2Points
#. CAD Command: Fillet
#. CAD Command: Chamfer
#. CAD Command: Split
#. CAD Command: Area
#. CAD Command: Time
#. CAD Command: PickAdd
#. CAD Command: Product
#. CAD Command: Program
#. CAD Command: ZoomFactor
#. CAD Command: GripHot
#. CAD Command: GripColor and GripCool
#. CAD Command: GripSize
#. CAD Command: Highlight
#. CAD Command: Units
#. CAD Command: Grid
#. CAD Command: Find
#. CAD Command: Divide
#. CAD Command: ZoomWindow (Move out of view.cpp)
#. Command: Web (Generates Spiderweb patterns)
#. Command: Guilloche (Generates Guilloche patterns)
#. Command: Celtic Knots
#. Command: Knotted Wreath
#. Lego Mindstorms NXT/EV3 ports and/or commands.
#. native function that flashes the command prompt to get users attention when using the prompt is required for a command.
#. libembroidery-composer like app that combines multiple files into one.
#. Settings Dialog, it would be nice to have it notify you when switching tabs that a setting has been changed. Adding an Apply button is what would make sense for this to happen.
#. Keyboard Zooming/Panning
#. G-Code format?
#. 3D Raised Embroidery
#. Gradient Filling Algorithms
#. Stitching Simulation
#. RPM packages?
#. Reports?
#. Record and Playback Commands
#. Settings option for reversing zoom scrolling direction
#. Qt GUI for libembroidery-convert
#. EPS format? Look at using Ghostscript as an optional add-on to libembroidery...
#. optional compile option for including LGPL/GPL libs etc... with warning to user about license requirements.
#. Realistic Visualization - Bump Mapping/OpenGL/Gradients?
#. Trim jumps over a certain length.
#. FAQ about setting high number of jumps for more controlled trimming.
#. Minimum stitch length option. (Many machines also have this option too)
#. Add 'Design Details' functionality to libembroidery-convert
#. Add 'Batch convert many to one format' functionality to libembroidery-convert
#. EmbroideryFLOSS - Color picker that displays catalog numbers and names.
#. beta
#. Realistic Visualization - Bump Mapping/OpenGL/Gradients?
#. Get undo history widget back (BUG).
#. Mac Bundle, .tar.gz and .zip source archive.
#. NSIS installer for Windows, Debian package, RPM package
#. GUI frontend for embroider features that aren't supported by embroidermodder: flag selector from a table
#. Update all formats without color to check for edr or rgb files.
#. Setting for reverse scrolling direction (for zoom, vertical pan)
#. Keyboard zooming, panning
#. New embroidermodder2.ico 16x16 logo that looks good at that scale.
#. Saving dst, pes, jef.
#. Settings dialog: notify when the user is switching tabs that the setting has been changed, adding apply button is what would make sense for this to happen.
#. Update language translations.
#. Replace KDE4 thumbnailer.
#. Import raster image.
#. Statistics from 1.0, needs histogram.
#. SNAP/ORTHO/POLAR.
#. Cut/copy allow post-selection.
#. Layout into config.
#. Notify user of data loss if not saving to an object format.
#. Add which formats to work with to preferences.
#. Cannot open file with `\#` in the name when opening multiple files but works with opening a single file.
#. Closing settings dialog with the X in the window saves settings rather than discarding them.
#. Otto theme icons: units, render, selectors, what's this icon doesn't scale.
#. Layer manager and Layer switcher dock widget.
#. Test that all formats read data in correct scale (format details should match other programs).
#. Custom filter bug -- doesn't save changes in some cases.
#. Tools to find common problems in the source code and suggest fixes to the developers. For example, a translation miss: that is, for any language other than English a missing entry in the translation table should supply a clear warning to developers.
#. Converting Qt C++ version to native GUI C throughout.
#. OpenGL Rendering: `Real` rendering to see what the embroidery looks like, Icons and toolbars, Menu bar.
#. Libembroidery interfacing: get all classes to use the proper libembroidery types within them. So `Ellipse` has `EmbEllipse` as public data within it.
#. Move calculations of rotation and scaling into `EmbVector` calls.
#. GUI frontend for embroider features that aren't supported by embroidermodder: flag selector from a table
#. Update all formats without color to check for edr or rgb files.
#. Setting for reverse scrolling direction (for zoom, vertical pan)
#. Keyboard zooming, panning
#. Better integrated help: I don't think the help should backend to a html file somewhere on the user's system. A better system would be a custom widget within the program that's searchable.
#. New embroidermodder2.ico 16x16 logo that looks good at that scale.
#. Settings dialog: notify when the user is switching tabs that the setting has been changed, adding apply button is what would make sense for this to happen.
@end enumerate


