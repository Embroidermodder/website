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



CAD command review
~~~~~~~~~~~~~~~~~~

%cad_desc.csv

.. index:: CAD; command; action; action_table

A CAD command in Embroidermodder is referred to as
an **action** and the data needed for it to function is stored
in the ``action_table``. For a regular user who wishes to use
more shortcuts and macros

	\label{tab:command-table}

.. csv-table:: Overview of the CAD commands available on all platorms but with various levels of support and applicability.
   :header: "ID", "Name", "Arguments", "Description"
   :widths: 5, 10, 20, 50

   0,"NEW","none","Create a new EmbPattern with a new tab in the GUI."
   1,"OPEN","char array","Open an EmbPattern with the supplied filename ``fname``."
   2,"SAVE","char array","Save the current loaded EmbPattern to the supplied filename ``fname``."
   3,"SCALE","selected objects, 1 float","Scale all selected objects by the number supplied, without selection scales the entire design."
   4,"CIRCLE","mouse co-ords","Adds a circle to the design based on the supplied numbers, converts to stitches on save for stitch only formats."
   5,"OFFSET","mouse co-ords","Shifts the selected objects by the amount given by the mouse co-ordinates."
   6,"EXTEND","",""
   7,"TRIM","selected stitches","Sets the flag for the stitches selected to TRIM."
   8,"break_at_point","",""
   9,"break_2_points","",""
   10,"FILLET","",""
   11,"STAR","mouse co-ords","Adds a star to the vector layer at the mouse co-ords."
   12,"textsingle","",""
   13,"CHAMFER","",""
   14,"SPLIT","A selected line in the vector layer. Otherwise 2 mouse co-ords in sequence.","Seperates stitch blocks by cutting threads between those either side of a line supplied by the user then rerouting the stitches."
   15,"AREA","Selected objects",""
   16,"TIME","None","Prints the current time as ISO formatted UTC to the console."
   17,"PICKADD","None",""
   16,"ZOOMFACTOR","float","Sets the zoom factor to the supplied argument."
   17,"PRODUCT","None "Prints the name and build code of the running version of Embroidermodder to disambiguate between forks and build versions. The string may only start with ``embroidermodder`` if the build is from the official Embroidermodder project under the terms of the license."
   18,"PROGRAM/PROG","",""
   19,"ZOOMWINDOW","",""
   20,"DIVIDE","",""
   21,"FIND","int","Select the stitch at the index given and center the view on it."
   22,"RECORD","None","Start recording all user input that passes through the actuator (i.e. actions from this table, with all the data passed as arguments) for forming macros. Stop recording if RECORD/PLAYBACK/END is issued."
   23,"PLAYBACK","None",""
   24,"ROTATE","",""
   25,"RGB","",""
   26,"move","",""
   27,"grid","",""
   28,"griphot","",""
   29,"gripcolor","",""
   30,"gripcool","",""
   31,"gripsize","",""
   32,"highlight","",""
   33,"units","",""
   34,"locatepoint","",""
   35,"distance","",""
   36,"ARC","",""
   37,"ELLIPSE","",""
   38,"ARRAY","",""
   39,"POINT","",""
   40,"POLYLINE","",""
   41,"POLYGON","",""
   42,"rectangle","",""
   43,"line","",""
   44,"arc-rt","",""
   45,"dolphin","",""
   46,"heart","",""

0 & newfile & none & Create a new EmbPattern with a new tab in the GUI. \\
1 & openfile & filename string & Open an EmbPattern with the supplied filename `fname`. \\
2 & savefile & filename string & Save the current loaded EmbPattern to the supplied filname `fname`. \\
3 & scale & selected objects, 1 float & Scale all selected objects by the number supplied, without selection scales the entire design \\
4 & circle & mouse co-ords & Adds a circle to the design based on the supplied numbers, converts to stitches on save for stitch only formats. \\
5 & offset & mouse co-ords & Shifts the selected objects by the amount given by the mouse co-ordinates. \\
6 & extend & & \\
7 & trim & & \\
8 & ``break\_at\_point`` & & \\
9 & ``break\_2\_points`` & & \\
10 & fillet & & \\
11 & star & & \\
12 & singlelinetext & & \\
13 & chamfer & & \\
14 & split & & \\
15 & area & & \\
16 & time & & \\
17 & pickadd & & \\
16 & zoomfactor & & \\
17 & product & & \\
18 & program & & \\
19 & zoomwindow & & \\
20 & divide & & \\
21 & find & & \\
22 & record & & \\
23 & playback & & \\
24 & rotate & & \\
25 & rgb & & \\
26 & move & & \\
27 & grid & & \\
28 & griphot & & \\
29 & gripcolor & & \\
30 & gripcool & & \\
31 & gripsize & & \\
32 & highlight & & \\
33 & units & & \\
34 & locatepoint & & \\
35 & distance & & \\
36 & arc & & \\
37 & ellipse & & \\
38 & array & & \\
39 & point & & \\
40 & polyline & & \\
41 & polygon & & \\
42 & rectangle & & \\
43 & line & & \\
44 & arc (rt) & & \\
45 & dolphin & & \\
46 & heart |
\end{tabular}

ADD-GEOMETRY
~~~~~~~~~~~~

============== ===================
**index**      5
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-HORIZONTAL-DIMENSION
~~~~~~~~~~~~~~~~~~~~~~~~

============== ===================
**index**      6
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================


ADD-IMAGE
~~~~~~~~~

============== ===================
**index**      7
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-INFINITE-LINE
~~~~~~~~~~~~~~~~~

============== ===================
**index**      8
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================


ADD-LINE
~~~~~~~~

============== ===================
**index**      9
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-PATH
~~~~~~~~

============== ===================
**index**      10
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-POINT
~~~~~~~~~

============== ===================
**index**      11
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-POLYGON
~~~~~~~~~~~

============== ===================
**index**      12
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-POLYLINE
~~~~~~~~~~~~

============== ===================
**index**      13
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-RAY
~~~~~~~

============== ===================
**index**      14
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-RECTANGLE
~~~~~~~~~~~~~

============== ===================
**index**      15
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-REGULAR-POLYGON
~~~~~~~~~~~~~~~~~~~

============== ===================
**index**      16
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-ROUNDED-RECTANGLE
~~~~~~~~~~~~~~~~~~~~~

============== ===================
**index**      17
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-RUBBER
~~~~~~~~~~

============== ===================
**index**      18
**arguments**  none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

ADD-SLOT
~~~~~~~~

index 19



ADD-TEXT-MULTI
~~~~~~~~~~~~~~

index 20



ADD-TEXT-SINGLE
~~~~~~~~~~~~~~~

index 21



ADD-TO-SELECTION
~~~~~~~~~~~~~~~~

index 22


ADD-TRIANGLE
~~~~~~~~~~~~

index 23


ADD-VERTICAL-DIMENSION
~~~~~~~~~~~~~~~~~~~~~~

index 24


ALERT
~~~~~

index 25



ALLOW-RUBBER
~~~~~~~~~~~~

index 26


APPEND-HISTORY
~~~~~~~~~~~~~~

index 27



CALCULATE-ANGLE
~~~~~~~~~~~~~~~

index 28



CALCULATE-DISTANCE
~~~~~~~~~~~~~~~~~~

index 29



## CHANGELOG

index 30



## CLEAR-RUBBER

index 31



## CLEAR-SELECTION

index 32



## COPY

index 33



## COPY-SELECTED

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



## MESSAGEBOX

index 47, 3 char arrays deliminated by quotes Example Call

Example Call

```
> MESSAGEBOX "alert" "" ""
```

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

## NEW

| index | arguments | flags |
|------|------|------|
| 52 | none | |

Create a new EmbPattern with a new tab in the GUI.

## NIGHT

| index | arguments | flags |
|------|------|------|
| 53 | none | |



## NUM-SELECTED

| index | arguments | flags |
|------|------|------|
| 54 | none | |

```
> NUM-SELECTED
12
```

## OPEN

| index | arguments | flags |
|------|------|------|
| 54 | string | |

Open an EmbPattern with the supplied filename in argument 0.

```
> OPEN designs/flower.pes
12
```

## PAN

index 56



## PASTE

index 57



## PASTE-SELECTED

index 58



## PERPENDICULAR-DISTANCE

index 59



## PLATFORM

index 60



## PREVIEW-OFF

index 61



## PREVIEW-ON

index 62



## PRINT

index 63



## PRINT-AREA

index 64



## QSNAP-X

index 65



## QSNAP-Y

index 66



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



## ZOOM

 index 96



## ZOOM-IN

index 97



## TEST

 index 98



## SLEEP

index 99



## LAYER-EDITOR

index 100



## MAKE-LAYER-CURRENT

index 101



## TEXT-BOLD

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


## TRIM

index 163
selected stitches

Sets the flag for the stitches selected to `TRIM`.

## SPLIT

index 164
A selected line in the vector layer. Otherwise 2 mouse co-ords in sequence.

Seperates stitch blocks by cutting threads between those either side of a line
supplied by the user then rerouting the stitches.

## TIME
~~~~~~~~~~~~~~~~~~~~~~~~

index 165

Prints the current time as ISO formatted UTC to the console.

## ZOOMFACTOR
~~~~~~~~~~~~~~~~~~~~~~~~

index 166 argument real number

Sets the zoom factor to the supplied argument.

## PRODUCT
~~~~~~~~~~~~~~~~~~~~~~~~

index 167

Prints the name and build code of the running version of Embroidermodder to
disambiguate between forks and build versions. The string may only start with
`embroidermodder` if the build is from the official Embroidermodder project
under the terms of the license.

## OFFSET
~~~~~~~~~~~~~~~~~~~~~~~~

| index | arguments | flags |
|------|------|------|
| 168 | mouse co-ords | |

Shifts the selected objects by the amount given by the mouse co-ordinates.

## FIND

index 169 argument int

Select the stitch at the index given and center the view on it.

## RECORD

index 170

Start recording all user input that passes through the actuator (i.e. actions
from this table, with all the data passed as arguments) for forming macros. Stop
recording if RECORD/PLAYBACK/END is issued.

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

[TOC]

## ADD-GEOMETRY
~~~~~~~~~~~~~~~

============== ===================
**index**     | 5
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

## ADD-HORIZONTAL-DIMENSION
~~~~~~~~~~~~~~~

============== ===================
**index**     | 6
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================


## ADD-IMAGE
~~~~~~~~~~~~~~~

============== ===================
**index**     | 7
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

## ADD-INFINITE-LINE
~~~~~~~~~~~~~~~

============== ===================
**index**     | 8
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================


## ADD-LINE
~~~~~~~~~~~~~~~

============== ===================
**index**     | 9
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

## ADD-PATH
~~~~~~~~~~~~~~~

============== ===================
**index**     | 10
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

\subsection{ADD-POINT}
~~~~~~~~~~~~~~~

============== ===================
**index**     | 11
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

\subsection{ADD-POLYGON}

============== ===================
**index**     | 12
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================


\subsection{ADD-POLYLINE}

============== ===================
**index**     | 13
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================


## ADD-RAY

============== ===================
**index**     | 14
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================


## ADD-RECTANGLE

============== ===================
**index**     | 15
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================


## ADD-REGULAR-POLYGON

============== ===================
**index**     | 16
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================


## ADD-ROUNDED-RECTANGLE

============== ===================
**index**     | 17
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================

## ADD-RUBBER

============== ===================
**index**     | 18
**arguments** | none
**tooltip**
**statustip**
**alias**
**shortcut**
============== ===================


## ADD-SLOT

index 19



## ADD-TEXT-MULTI

index 20



## ADD-TEXT-SINGLE

index 21



## ADD-TO-SELECTION

index 22



## ADD-TRIANGLE

index 23



## ADD-VERTICAL-DIMENSION

index 24



## ALERT

index 25



## ALLOW-RUBBER

index 26



## APPEND-HISTORY

index 27



## CALCULATE-ANGLE

index 28



## CALCULATE-DISTANCE

index 29



## CHANGELOG

index 30



## CLEAR-RUBBER

index 31



## CLEAR-SELECTION

index 32



## COPY

index 33



## COPY-SELECTED

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



## MESSAGEBOX

index 47, 3 char arrays deliminated by quotes Example Call

Example Call

```
> MESSAGEBOX "alert" "" ""
```

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

## NEW

| index | arguments | flags |
|------|------|------|
| 52 | none | |

Create a new EmbPattern with a new tab in the GUI.

## NIGHT

| index | arguments | flags |
|------|------|------|
| 53 | none | |



## NUM-SELECTED

| index | arguments | flags |
|------|------|------|
| 54 | none | |

```
> NUM-SELECTED
12
```

## OPEN

| index | arguments | flags |
|------|------|------|
| 54 | string | |

Open an EmbPattern with the supplied filename in argument 0.

```
> OPEN designs/flower.pes
12
```

## PAN

index 56



## PASTE

index 57



## PASTE-SELECTED

index 58



## PERPENDICULAR-DISTANCE

index 59



## PLATFORM

index 60



## PREVIEW-OFF

index 61



## PREVIEW-ON

index 62



## PRINT

index 63



## PRINT-AREA

index 64



## QSNAP-X

index 65



## QSNAP-Y

index 66



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



## ZOOM

 index 96



## ZOOM-IN

index 97



## TEST

 index 98



## SLEEP

index 99



## LAYER-EDITOR

index 100



## MAKE-LAYER-CURRENT

index 101



## TEXT-BOLD

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


## TRIM

index 163
selected stitches

Sets the flag for the stitches selected to `TRIM`.

## SPLIT

index 164
A selected line in the vector layer. Otherwise 2 mouse co-ords in sequence.

Seperates stitch blocks by cutting threads between those either side of a line
supplied by the user then rerouting the stitches.

## TIME

index 165

Prints the current time as ISO formatted UTC to the console.

## ZOOMFACTOR

index 166 argument real number

Sets the zoom factor to the supplied argument.

## PRODUCT

index 167

Prints the name and build code of the running version of Embroidermodder to
disambiguate between forks and build versions. The string may only start with
`embroidermodder` if the build is from the official Embroidermodder project
under the terms of the license.

## OFFSET

| index | arguments | flags |
|------|------|------|
| 168 | mouse co-ords | |

Shifts the selected objects by the amount given by the mouse co-ordinates.

## FIND

index 169 argument int

Select the stitch at the index given and center the view on it.

## RECORD

index 170

Start recording all user input that passes through the actuator (i.e. actions
from this table, with all the data passed as arguments) for forming macros. Stop
recording if RECORD/PLAYBACK/END is issued.

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

\chapter{CAD Command Overview}

\section{ABOUT}
\index{action}

\begin{center}
\begin{tabular}{l | l | l}
index & arguments & flags \\
0 & none &
\end{tabular}
\end{center}

\section{ADD-ARC}
\index{action}

\begin{center}
\begin{tabular}{l | l | l}
index & arguments & flags \\
1 & mouse co-ords &
\end{tabular}
\end{center}

\section{ADD-CIRCLE}
\index{ADD-CIRCLE}

\begin{center}
\begin{tabular}{l | l | l}
index & arguments & flags \\
2 & mouse co-ords &
\end{tabular}
\end{center}

\section{ADD-DIM-LEADER}
\index{ADD-DIM-LEADER}

\begin{center}
\begin{tabular}{l | l | l}
index & arguments & flags \\
3 & none &
\end{tabular}
\end{center}

\section{ADD-ELLIPSE}
\index{ADD-ELLIPSE}

\begin{center}
\begin{tabular}{l | l | l}
index & arguments & flags \\
4 & none &
\end{tabular}
\end{center}

\section{ADD-GEOMETRY}
\index{ADD-GEOMETRY}

\begin{center}
\begin{tabular}{l | l | l}
index & arguments & flags \\
5 & none &
\end{tabular}
\end{center}

\section{ADD-HORIZONTAL-DIMENSION}
\index{ADD-HORIZONTAL-DIMENSION}

\begin{center}
\begin{tabular}{l | l | l}
index & arguments & flags \\
6 & none &
\end{tabular}
\end{center}

\section{ADD-IMAGE}
\index{ADD-IMAGE}

\begin{center}
\begin{tabular}{l | l | l}
index & arguments & flags \\
7 & none &
\end{tabular}
\end{center}

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

\section{MESSAGEBOX}
\index{action}

index 47, 3 char arrays deliminated by quotes Example Call

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

\section{PASTE-SELECTED}
\index{PASTE-SELECTED}

index 58

\section{PERPENDICULAR-DISTANCE}
\index{PERPENDICULAR-DISTANCE}

index 59

\section{PLATFORM}
\index{PLATFORM}

index 60

\section{PREVIEW-OFF}
\index{PREVIEW-OFF}

index 61

\section{PREVIEW-ON}
\index{PREVIEW-ON}

index 62

\section{PRINT}
\index{PRINT}

index 63

\section{PRINT-AREA}
\index{PRINT-AREA}

index 64

\section{QSNAP-X}
\index{QSNAP-X}

index 65

\section{QSNAP-Y}
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

\section{ZOOM-IN}
\index{action}

index 97

\section{TEST}
\index{action}

 index 98

\section{SLEEP}
\index{action}

index 99

\section{LAYER-EDITOR}
\index{action}

index 100

\section{MAKE-LAYER-CURRENT}
\index{action}

index 101

\section{TEXT-BOLD}
\index{action}

index 102

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

\section{ZOOM-CENTER}
\index{action}

index 135

\section{HIDE-ALL-LAYERS}
\index{action}

index 136

\section{ZOOM-SELECTED}
\index{action}

index 137

\section{ZOOM-ALL}
\index{action}

index 138

\section{ADD-HEART}
\index{action}

index 139

\section{ADD-SINGLE-LINE-TEXT}
\index{action}

index 140

\section{SHOW-ALL-LAYERS}
\index{action}

index 141

\section{FREEZE-ALL-LAYERS}
\index{action}

index 142

\section{THAW-ALL-LAYERS}
\index{action}

index 143

\section{LOCK-ALL-LAYERS}
\index{action}

index 144

\section{UNLOCK-ALL-LAYERS}
\index{UNLOCK-ALL-LAYERS}

index 145

\section{ADD-DOLPHIN}
\index{ADD-DOLPHIN}

index 146

\section{ADD-DISTANCE}
\index{ADD-DISTANCE}

index 147

\section{LOCATE-POINT}
\index{LOCATE-POINT}

index 148

\section{QUICKSELECT}
\index{QUICKSELECT}

index 149

\section{SPELLCHECK}
\index{SPELLCHECK}

index 150

\section{DISTANCE}
\index{DISTANCE}

index 151

\section{MOVE}
\index{MOVE}

index 152

\section{QUICKLEADER}
\index{QUICKLEADER}

index 153

\section{RGB}
\index{RGB}

 index 154

\section{ROTATE}
\index{ROTATE}

index 155

\section{SANDBOX}
\index{SANDBOX}

index 156

\section{ADD-SNOWFLAKE}
\index{ADD-SNOWFLAKE}

index 157

\section{ADD-STAR}
\index{ADD-STAR}

index 158

\section{DELETE}
\index{DELETE}

index 159

\section{SCALE}
\index{SCALE}

index 160

\section{SINGLE-LINE-TEXT}
\index{SINGLE-LINE-TEXT}

index 161

\section{SYSWINDOWS}
\index{SYSWINDOWS}

index 162


