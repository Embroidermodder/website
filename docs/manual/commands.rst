CAD Commands
============

Overview
--------

A *CAD command* in Embroidermodder is referred to as an action and the data
needed for it to function is stored in the `command_data`. For a regular user
who wishes to use more shortcuts and macros: a list of commands can be fed into
the prompt similar to a `GCODE` file.

These are available on all platorms but with various levels of support and
applicability.

For a table of all the commands, see the appendix (TODO).

.. populate with ``echo commands/* | sed "s/ /\n   /g"``

.. toctree::
   :caption: Command List

   commands/000-about.rst
   commands/001-add-arc.rst
   commands/002-add-circle.rst
   commands/003-add-dim-leader.rst
   commands/004-add-ellipse.rst
   commands/005-add-geometry.rst
   commands/006-add-horizontal-dimension.rst
   commands/007-add-image.rst
   commands/008-add-infinite-line.rst
   commands/009-add-line.rst
   commands/010-add-path.rst
   commands/011-add-point.rst
   commands/012-add-polygon.rst
   commands/013-add-polyline.rst
   commands/014-add-ray.rst
   commands/015-add-rectangle.rst
   commands/016-add-regular-polygon.rst
   commands/017-add-rounded-rectangle.rst
   commands/018-add-rubber.rst
   commands/019-add-slot.rst
   commands/020-add-text-multi.rst
   commands/021-add-text-single.rst
   commands/022-add-to-selection.rst
   commands/023-add-triangle.rst
   commands/024-add-vertical-dimension.rst
   commands/025-alert.rst
   commands/026-allow-rubber.rst
   commands/027-append-history.rst
   commands/028-calculate-angle.rst
   commands/029-calculate-distance.rst
   commands/030-changelog.rst
   commands/031-clear-rubber.rst
   commands/032-clear-selection.rst
   commands/033-copy.rst
   commands/034-copy-selected.rst
   commands/035-cut.rst
   commands/036-cut-selected.rst
   commands/037-day.rst
   commands/038-debug.rst
   commands/039-delete-selected.rst
   commands/040-design-details.rst
   commands/041-do-nothing.rst
   commands/042-end-command.rst
   commands/043-error.rst
   commands/044-help.rst
   commands/045-icon.rst
   commands/046-init-command.rst
   commands/047-messagebox.rst
   commands/048-mirror-selected.rst
   commands/049-mouse-x.rst
   commands/050-mouse-y.rst
   commands/051-move-selected.rst
   commands/051-num-selected.rst
   commands/052-new.rst
   commands/053-night.rst
   commands/054-open.rst
   commands/056-pan.rst
   commands/057-paste.rst
   commands/058-paste-selected.rst
   commands/135-zoom-center.rst
   commands/136-hide-all-layers.rst
   commands/137-zoom-selected.rst
   commands/138-zoom-all.rst
   commands/139-design.rst
   commands/140-add-single-text.rst
   commands/141-show-all-layers.rst
   commands/142-freeze-all-layers.rst
   commands/143-thaw-all-layers.rst
   commands/144-lock-all-layers.rst
   commands/145-unlock-all-layers.rst
   commands/147-add-distance.rst
   commands/148-locate-point.rst
   commands/149-quickselect.rst
   commands/150-spellcheck.rst
   commands/151-distance.rst
   commands/152-move.rst
   commands/153-quickleader.rst
   commands/154-rgb.rst
   commands/155-rotate.rst
   commands/156-sandbox.rst
   commands/157-add-snowflake.rst
   commands/158-add-star.rst
   commands/159-delete.rst
   commands/160-scale.rst
   commands/161-single-line-text.rst
   commands/162-syswindows.rst
   commands/163-trim.rst
   commands/164-split.rst
   commands/165-time.rst
   commands/166-set.rst
   commands/167-product.rst
   commands/168-offset.rst
   commands/169-find.rst
   commands/170-record.rst
   commands/188-arc-rt.rst

## EXIT

 index 67

## REDO

index 68

## ROTATE-SELECTED

index 69

## RUBBER

index 70

## SCALE-SELECTED

index 71

## SELECT-ALL

index 72

## SETTINGS-DIALOG

index 73

## SET-BACKGROUND-COLOR

index 74

## SET-CROSSHAIR-COLOR

index 75

## SET-CURSOR-SHAPE

index 76

## SET-GRID-COLOR

index 77

## SET-PROMPT-PREFIX

index 78

## SET-RUBBER-FILTER

index 79

## SET-RUBBER-MODE

index 80

## SET-RUBBER-POINT

index 81

## SET-RUBBER-TEXT

index 82

## SPARE-RUBBER

index 83

## TIP-OF-THE-DAY

index 84

## TODO

 index 85

## UNDO

 index 86

## VERSION

index 87

## VULCANIZE

index 88

## WHATS-THIS

index 89

## WINDOW-CLOSE

index 90

## WINDOW-CLOSE-ALL

index 91

## WINDOW-TILE

index 92

## WINDOW-CASCADE

index 93

## WINDOW-NEXT

index 94

## WINDOW-PREVIOUS

index 95


## TEXT-ITALIC

index 103

## TEXT-UNDERLINE

index 104

## TEXT-STRIKEOUT

index 105

## TEXT-OVERLINE

index 106

## LAYER-PREVIOUS

index 107

## ICON16

index 108

## ICON24

index 109

## ICON32

index 110

## ICON48

index 111

## ICON64

index 112

## ICON128

index 113

## SAVE

| index | arguments | flags |
|------|------|------|
| 114 | none | |

Save the current loaded EmbPattern to the current filename.

## SAVEAS

| index | arguments | flags |
|------|------|------|
| 115 | string | |

Save the current loaded EmbPattern to the supplied filename in argument 0.

## PAN-REAL-TIME

index 116

## PAN-POINT

index 117

## PAN-LEFT

index 118

## PAN-RIGHT

index 119

## PAN-UP

index 120

## PAN-DOWN

index 121

## ZOOM-REAL-TIME

index 122

## ZOOM-PREVIOUS

index 123

## ZOOM-WINDOW

index 124

## ZOOM-DYNAMIC

index 125

## ZOOM-OUT

index 126

## ZOOM-EXTENTS

index 127

## LAYERS

index 128

\section{LAYER-SELECTOR}
\index{action}

index 129

\section{TREBLECLEF}
\index{action}

index 130

\section{COLOR-SELECTOR}
\index{action}

index 131

\section{LINE-TYPE-SELECTOR}
\index{action}

index 132

\section{LINE-WEIGHT-SELECTOR}
\index{action}

index 133

\section{ZOOM-SCALE}
\index{action}

index 134

## ZOOM-CENTER

index 135

## HIDE-ALL-LAYERS

index 136

## ZOOM-SELECTED

index 137

## ZOOM-ALL

index 138

## ADD-HEART

index 139

## ADD-SINGLE-LINE-TEXT

index 140

## SHOW-ALL-LAYERS

index 141

## FREEZE-ALL-LAYERS

index 142

## THAW-ALL-LAYERS

index 143

## LOCK-ALL-LAYERS

index 144

## UNLOCK-ALL-LAYERS

index 145

## ADD-DOLPHIN

index 146

## ADD-DISTANCE

index 147

## LOCATE-POINT

index 148

## QUICKSELECT

index 149

## SPELLCHECK

index 150

## DISTANCE

index 151

## MOVE

index 152

## QUICKLEADER

index 153

## RGB

 index 154

## ROTATE

index 155

## SANDBOX

index 156

## BREAK_AT_POINT

index 171

## BREAK_2_POINTS

index 172

## UNITS

index 173

## DIVIDE

index 174

## GRID

index 175

## GRIPHOT

index 176

## GRIPCOLOR

index 177

## GRIPCOOL

index 178

## GRIPSIZE

index 179

## AREA

index 180

| 15 | `AREA` | Selected objects |

## CHAMFER

index 181

## PICK-ADD

index 182

## FILLET

index 182

## EXTEND

index 183

## PROGRAM

index 184

Aliases PROG

## PLAYBACK

index 185

## HIGHLIGHT

index 186

## ARRAY

index 187

## ARC-RT

index 188

FIXME: Not sure what this one means.

ADD-TO-SELECTION
----------------

index 22


ADD-TRIANGLE
------------

index 23

ADD-VERTICAL-DIMENSION
----------------------

index 24

ALERT
-----

index 25

ALLOW-RUBBER
------------

index 26

APPEND-HISTORY
--------------

index 27

CALCULATE-ANGLE
---------------

index 28

CALCULATE-DISTANCE
------------------

index 29

CHANGELOG
---------

index 30


CLEAR-RUBBER
------------

index 31


CLEAR-SELECTION
---------------

index 32


COPY
----

index 33


COPY-SELECTED
-------------

index 34

## CUT

index 35

## CUT-SELECTED

index 36

## DAY

index 37

## DEBUG

index 38

## DELETE-SELECTED

index 39

## DESIGN-DETAILS

index 40

## DO-NOTHING

index 41

## END

index 42

## ERROR

index 43

## HELP

index 44

## ICON

index 45

Example Call

```
ICON 32
```

## INIT

index 46


## MIRROR-SELECTED

index 48

## MOUSE-X

index 49

Example Call

```
> MOUSE-X
321
```

## MOUSE-Y

index 50

```
> MOUSE-Y
221
```

## MOVE-SELECTED

index 51

Example

```
>
```

NEW
---

| index | arguments | flags |
|------|------|------|
| 52 | none | |

Create a new EmbPattern with a new tab in the GUI.

NIGHT
-----

| index | arguments | flags |
|------|------|------|
| 53 | none | |

NUM-SELECTED
------------

| index | arguments | flags |
|------|------|------|
| 54 | none | |

```
> NUM-SELECTED
12
```

OPEN
----

| index | arguments | flags |
|------|------|------|
| 54 | string | |

Open an EmbPattern with the supplied filename in argument 0.

```
> OPEN designs/flower.pes
12
```

PAN
---

index 56


PASTE
-----

index 57



``print`` command
=================

\index{PRINT}

index 63

``print-area`` command
======================

\index{PRINT-AREA}

index 64


## EXIT

 index 67

## REDO

index 68

## ROTATE-SELECTED

index 69

## RUBBER

index 70

## SCALE-SELECTED

index 71

## SELECT-ALL

index 72

## SETTINGS-DIALOG

index 73

## SET-BACKGROUND-COLOR

index 74

## SET-CROSSHAIR-COLOR

index 75

## SET-CURSOR-SHAPE

index 76

## SET-GRID-COLOR

index 77

## SET-PROMPT-PREFIX

index 78

## SET-RUBBER-FILTER

index 79

## SET-RUBBER-MODE

index 80

## SET-RUBBER-POINT

index 81

## SET-RUBBER-TEXT

index 82

## SPARE-RUBBER

index 83

## TIP-OF-THE-DAY

index 84

## TODO

 index 85

## UNDO

 index 86

## VERSION

index 87

## VULCANIZE

index 88

## WHATS-THIS

index 89

## WINDOW-CLOSE

index 90

## WINDOW-CLOSE-ALL

index 91

## WINDOW-TILE

index 92

## WINDOW-CASCADE

index 93

## WINDOW-NEXT

index 94

## WINDOW-PREVIOUS

index 95

``zoom`` command
================

 index 96

``layer-editor`` command
========================

\index{action}

index 100

``make-layer-current`` command
==============================

\index{action}

index 101

``text-bold`` command
=====================

\index{action}

index 102

## TEXT-ITALIC

index 103

## TEXT-UNDERLINE

index 104

## TEXT-STRIKEOUT

index 105

## TEXT-OVERLINE

index 106

## LAYER-PREVIOUS

index 107

## ICON16

index 108

## ICON24

index 109

## ICON32

index 110

## ICON48

index 111

## ICON64

index 112

## ICON128

index 113

## SAVE

| index | arguments | flags |
|------|------|------|
| 114 | none | |

Save the current loaded EmbPattern to the current filename.

## SAVEAS

| index | arguments | flags |
|------|------|------|
| 115 | string | |

Save the current loaded EmbPattern to the supplied filename in argument 0.

## PAN-REAL-TIME

index 116

## PAN-POINT

index 117

## PAN-LEFT

index 118

## PAN-RIGHT

index 119

## PAN-UP

index 120

## PAN-DOWN

index 121

## ZOOM-REAL-TIME

index 122

## ZOOM-PREVIOUS

index 123

## ZOOM-WINDOW

index 124

## ZOOM-DYNAMIC

index 125

## ZOOM-OUT

index 126

## ZOOM-EXTENTS

index 127

## LAYERS

index 128

## LAYER-SELECTOR

index 129

## TREBLECLEF

index 130

## COLOR-SELECTOR

index 131

## LINE-TYPE-SELECTOR

index 132

## LINE-WEIGHT-SELECTOR

index 133

## ZOOM-SCALE

index 134

## ZOOM-CENTER

index 135

## HIDE-ALL-LAYERS

index 136

## ZOOM-SELECTED

index 137

## ZOOM-ALL

index 138

## ADD-HEART

index 139

## ADD-SINGLE-LINE-TEXT

index 140

## SHOW-ALL-LAYERS

index 141

## FREEZE-ALL-LAYERS

index 142

## THAW-ALL-LAYERS

index 143

## LOCK-ALL-LAYERS

index 144

## UNLOCK-ALL-LAYERS

index 145

## ADD-DOLPHIN

index 146

## ADD-DISTANCE

index 147

## LOCATE-POINT

index 148

## QUICKSELECT

index 149

## SPELLCHECK

index 150

## DISTANCE

index 151

## MOVE

index 152

## QUICKLEADER

index 153

## RGB

 index 154

## ROTATE

index 155

## SANDBOX

index 156

## ADD-SNOWFLAKE

index 157

## ADD-STAR

| 158 | `STAR` | mouse co-ords |

Adds a star to the vector layer at the mouse co-ords.

## DELETE

index 159

## SCALE

| index | arguments | flags |
|------|------|------|
| 160 | selected objects, real number | |

Scale all selected objects by the number supplied, without selection scales the
entire design.

## SINGLE-LINE-TEXT

index 161

## SYSWINDOWS

index 162

BREAK_AT_POINT
--------------

index 171

BREAK_2_POINTS
--------------

index 172

UNITS
-----

index 173

DIVIDE
------

index 174

GRID
----

index 175

GRIPHOT
-------

index 176

GRIPCOLOR
---------

index 177

GRIPCOOL
--------

index 178

GRIPSIZE
--------

index 179

AREA
----

index 180

| 15 | `AREA` | Selected objects |

CHAMFER
-------

index 181

PICK-ADD
--------

index 182

FILLET
------

index 182

EXTEND
------

index 183

## PROGRAM

index 184

Aliases PROG

## PLAYBACK

index 185

## HIGHLIGHT

index 186

## ARRAY

index 187

\section{ADD-INFINITE-LINE}
\index{ADD-INFINITE-LINE}

\begin{center}
\begin{tabular}{l | l | l}
index & arguments & flags \\
8 & none &
\end{tabular}
\end{center}

\section{ADD-LINE}
\index{ADD-LINE}

\begin{center}
\begin{tabular}{l | l | l}
index & arguments & flags \\
9 & none &
\end{tabular}
\end{center}

\section{ADD-PATH}
\index{ADD-PATH}

index 10

\section{ADD-POINT}
\index{ADD-POINT}

index 11

\section{ADD-POLYGON}
\index{ADD-POLYGON}

index 12

\section{ADD-POLYLINE}
\index{ADD-POLYLINE}

index 13

\section{ADD-RAY}
\index{ADD-RAY}

index 14

\section{ADD-RECTANGLE}
\index{ADD-RECTANGLE}

index 15

\section{ADD-REGULAR-POLYGON}
\index{ADD-REGULAR-POLYGON}

index 16

\section{ADD-ROUNDED-RECTANGLE}
\index{action}

index 17

\section{ADD-RUBBER}
\index{ADD-RUBBER}

index 18

\section{ADD-SLOT}
\index{action}

index 19

\section{ADD-TEXT-MULTI}
\index{action}

index 20

\section{ADD-TEXT-SINGLE}
\index{action}

index 21

\section{ADD-TO-SELECTION}
\index{action}

index 22

\section{ADD-TRIANGLE}
\index{action}

index 23

\section{ADD-VERTICAL-DIMENSION}
\index{action}

index 24

\section{ALERT}
\index{action}

index 25

\section{ALLOW-RUBBER}
\index{action}

index 26

\section{APPEND-HISTORY}
\index{action}

index 27

\section{CALCULATE-ANGLE}
\index{action}

index 28

\section{CALCULATE-DISTANCE}
\index{action}

index 29

\section{CHANGELOG}
\index{action}

index 30

\section{CLEAR-RUBBER}
\index{action}

index 31

\section{CLEAR-SELECTION}
\index{action}

index 32

\section{COPY}
\index{action}

index 33

\section{COPY-SELECTED}
\index{action}

index 34

\section{CUT}
\index{action}

index 35

\section{CUT-SELECTED}
\index{action}

index 36

\section{DAY}
\index{action}

index 37

\section{DEBUG}
\index{action}

index 38

\section{DELETE-SELECTED}
\index{action}

index 39

\section{DESIGN-DETAILS}
\index{action}

index 40

\section{DO-NOTHING}
\index{action}

index 41

\section{END}
\index{action}

index 42

\section{ERROR}
\index{action}

index 43

\section{HELP}
\index{action}

index 44

\section{ICON}
\index{action}

index 45

\section{INIT}
\index{action}

index 46


\section{MIRROR-SELECTED}
\index{action}

index 48

\section{MOUSE-X}
\index{action}

index 49

\section{MOUSE-Y}
\index{action}

index 50

\section{MOVE-SELECTED}
\index{action}

index 51

\section{NEW}
\index{action}

index 52

\section{NIGHT}
\index{action}

index 53

\section{NUM-SELECTED}
\index{action}

index 54

\section{OPEN}
\index{action}

index 55

\section{PAN}
\index{action}

index 56

\section{PASTE}
\index{PASTE}

index 57

``perpendicular-distance`` command
==================================

.. index:: ``perpendicular-distance``

index 59

``platform`` command
====================

.. index:: ``platform``

index 60

``preview-off`` command
=======================

.. index:: ``preview-off``

index 61

``preview-on`` command
=======================

.. index:: ``preview-on``

index 62

``QSNAP-X`` command
===================

\index{QSNAP-X}

index 65

``QSNAP-Y`` command
===================

\index{QSNAP-Y}

index 66

\section{EXIT}
\index{EXIT}

 index 67

\section{REDO}
\index{REDO}

index 68

\section{ROTATE-SELECTED}
\index{ROTATE-SELECTED}

index 69

\section{RUBBER}
\index{RUBBER}

index 70

\section{SCALE-SELECTED}
\index{SCALE-SELECTED}

index 71

\section{SELECT-ALL}
\index{SELECT-ALL}

index 72

\section{SETTINGS-DIALOG}
\index{action}

index 73

\section{SET-BACKGROUND-COLOR}
\index{action}

index 74

\section{SET-CROSSHAIR-COLOR}
\index{action}

index 75

\section{SET-CURSOR-SHAPE}
\index{action}

index 76

\section{SET-GRID-COLOR}
\index{action}

index 77

\section{SET-PROMPT-PREFIX}
\index{action}

index 78

\section{SET-RUBBER-FILTER}
\index{action}

index 79

\section{SET-RUBBER-MODE}
\index{action}

index 80

\section{SET-RUBBER-POINT}
\index{action}

index 81

\section{SET-RUBBER-TEXT}
\index{action}

index 82

\section{SPARE-RUBBER}
\index{action}

index 83

\section{TIP-OF-THE-DAY}
\index{action}

index 84

\section{TODO}
\index{action}

 index 85

\section{UNDO}
\index{action}

 index 86

\section{VERSION}
\index{action}

index 87

\section{VULCANIZE}
\index{action}

index 88

\section{WHATS-THIS}
\index{action}

index 89

\section{WINDOW-CLOSE}
\index{action}

index 90

\section{WINDOW-CLOSE-ALL}
\index{action}

index 91

\section{WINDOW-TILE}
\index{action}

index 92

\section{WINDOW-CASCADE}
\index{action}

index 93

\section{WINDOW-NEXT}
\index{action}

index 94

\section{WINDOW-PREVIOUS}
\index{action}

index 95

\section{ZOOM}
\index{action}

 index 96


\section{TEXT-ITALIC}
\index{action}

index 103

\section{TEXT-UNDERLINE}
\index{action}

index 104

\section{TEXT-STRIKEOUT}
\index{action}

index 105

\section{TEXT-OVERLINE}
\index{action}

index 106

\section{LAYER-PREVIOUS}
\index{action}

index 107

\section{ICON16}
\index{action}

index 108

\section{ICON24}
\index{action}

index 109

\section{ICON32}
\index{action}

index 110

\section{ICON48}
\index{action}

index 111

\section{ICON64}
\index{action}

index 112

\section{ICON128}
\index{action}

index 113

\section{SAVE}
\index{action}

index 114

\section{SAVEAS}
\index{action}

index 115

\section{PAN-REAL-TIME}
\index{action}

index 116

\section{PAN-POINT}
\index{action}

index 117

\section{PAN-LEFT}
\index{action}

index 118

\section{PAN-RIGHT}
\index{action}

index 119

\section{PAN-UP}
\index{action}

index 120

\section{PAN-DOWN}
\index{action}

index 121

\section{ZOOM-REAL-TIME}
\index{action}

index 122

\section{ZOOM-PREVIOUS}
\index{action}

index 123

\section{ZOOM-WINDOW}
\index{action}

index 124

\section{ZOOM-DYNAMIC}
\index{action}

index 125

\section{ZOOM-OUT}
\index{action}

index 126

\section{ZOOM-EXTENTS}
\index{action}

index 127

\section{LAYERS}
\index{action}

index 128

