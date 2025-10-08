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
   commands/001-arc.rst
   commands/002-circle.rst
   commands/003-dim-leader.rst
   commands/004-ellipse.rst
   commands/005-add-geometry.rst
   commands/006-horizontal-dimension.rst
   commands/007-image.rst
   commands/008-infinite-line.rst
   commands/009-line.rst
   commands/010-path.rst
   commands/011-point.rst
   commands/012-polygon.rst
   commands/013-polyline.rst
   commands/014-ray.rst
   commands/015-rectangle.rst
   commands/016-regular-polygon.rst
   commands/017-rounded-rectangle.rst
   commands/018-add-rubber.rst
   commands/019-slot.rst
   commands/020-text-multi.rst
   commands/021-text-single.rst
   commands/022-add-to-selection.rst
   commands/023-triangle.rst
   commands/024-vertical-dimension.rst
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
   commands/086-undo.rst
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

   commands/067-exit.rst
   commands/068-redo.rst
   commands/069-rotate-selected.rst
   commands/070-rubber.rst
   commands/071-scale-selected.rst
   commands/072-select-all.rst
   commands/073-settings-dialog.rst

   commands/081-rubber-point.rst
   commands/082-rubber-text.rst
   commands/083-spare-rubber.rst
   commands/084-tip-of-the-day.rst
   commands/085-todo.rst
   commands/087-version.rst
   commands/088-vulcanize.rst
   commands/089-whats-this.rst
   commands/090-window-close.rst

#    commands/91-window-close-all.rst

## WINDOW-TILE

#    commands/92

## WINDOW-CASCADE

#    commands/93

## WINDOW-NEXT

#    commands/94

## WINDOW-PREVIOUS

#    commands/95


## TEXT-ITALIC

#    commands/103

## TEXT-UNDERLINE

#    commands/104

## TEXT-STRIKEOUT

#    commands/105

## TEXT-OVERLINE

#    commands/106

## LAYER-PREVIOUS

#    commands/107

## ICON16

#    commands/108

## ICON24

#    commands/109

## ICON32

#    commands/110

## ICON48

#    commands/111

## ICON64

#    commands/112

## ICON128

#    commands/113

## SAVE

| #    commands/| arguments | flags |
|------|------|------|
| 114 | none | |

Save the current loaded EmbPattern to the current filename.

## SAVEAS

| #    commands/| arguments | flags |
|------|------|------|
| 115 | string | |

Save the current loaded EmbPattern to the supplied filename in argument 0.

## PAN-REAL-TIME

#    commands/116

## PAN-POINT

#    commands/117

## PAN-LEFT

#    commands/118

## PAN-RIGHT

#    commands/119

## PAN-UP

#    commands/120

## PAN-DOWN

#    commands/121

## ZOOM-REAL-TIME

#    commands/122

## ZOOM-PREVIOUS

#    commands/123

## ZOOM-WINDOW

#    commands/124

## ZOOM-DYNAMIC

#    commands/125

## ZOOM-OUT

#    commands/126

## ZOOM-EXTENTS

#    commands/127

## LAYERS

#    commands/128

LAYER-SELECTOR}
#    commands/129

TREBLECLEF}
#    commands/130

COLOR-SELECTOR}
#    commands/131

LINE-TYPE-SELECTOR}
#    commands/132

LINE-WEIGHT-SELECTOR}
#    commands/133

ZOOM-SCALE}
#    commands/134

## ZOOM-CENTER

#    commands/135

## HIDE-ALL-LAYERS

#    commands/136

## ZOOM-SELECTED

#    commands/137

## ZOOM-ALL

#    commands/138

## ADD-HEART

#    commands/139

## ADD-SINGLE-LINE-TEXT

#    commands/140

## SHOW-ALL-LAYERS

#    commands/141

## FREEZE-ALL-LAYERS

#    commands/142

## THAW-ALL-LAYERS

#    commands/143

## LOCK-ALL-LAYERS

#    commands/144

## UNLOCK-ALL-LAYERS

#    commands/145

## ADD-DOLPHIN

#    commands/146

## ADD-DISTANCE

#    commands/147

## LOCATE-POINT

#    commands/148

## QUICKSELECT

#    commands/149

## SPELLCHECK

#    commands/150

## DISTANCE

#    commands/151

## MOVE

#    commands/152

## QUICKLEADER

#    commands/153

## RGB

 #    commands/154

## ROTATE

#    commands/155

## SANDBOX

#    commands/156

## BREAK_AT_POINT

#    commands/171

## BREAK_2_POINTS

#    commands/172

## UNITS

#    commands/173

## DIVIDE

#    commands/174

## GRID

#    commands/175

## GRIPHOT

#    commands/176

## GRIPCOLOR

#    commands/177

## GRIPCOOL

#    commands/178

## GRIPSIZE

#    commands/179

## AREA

#    commands/180

| 15 | `AREA` | Selected objects |

## CHAMFER

#    commands/181

## PICK-ADD

#    commands/182

## FILLET

#    commands/182

## EXTEND

#    commands/183

## PROGRAM

#    commands/184

Aliases PROG

## PLAYBACK

#    commands/185

## HIGHLIGHT

#    commands/186

## ARRAY

#    commands/187

## ARC-RT

#    commands/188

FIXME: Not sure what this one means.

#    commands/022-add-to-selection.rst
#    commands/023-triangle.rst
#    commands/024-vertical-dimension.rst
#    commands/025-alert.rst
#    commands/026-allow-rubber.rst
#    commands/027-append-history.rst
#    commands/028-calculate-angle.rst
#    commands/029-distance.rst
#    commands/030-changelog.rst
#    commands/031-clear-rubber.rst
#    commands/032-clear-selection.rst
#    commands/033-copy.rst
#    commands/034-copy-selected.rst
#    commands/035-cut.rst
#    commands/036-cut-selected.rst

## DAY

#    commands/37

## DEBUG

#    commands/38

## DELETE-SELECTED

#    commands/39

## DESIGN-DETAILS

#    commands/40

## DO-NOTHING

#    commands/41

## END

#    commands/42

## ERROR

#    commands/43

## HELP

#    commands/44

## ICON

#    commands/45

Example Call

```
ICON 32
```

## INIT

#    commands/46


## MIRROR-SELECTED

#    commands/48

## MOUSE-X

#    commands/49

Example Call

```
> MOUSE-X
321
```

## MOUSE-Y

#    commands/50

```
> MOUSE-Y
221
```

## MOVE-SELECTED

#    commands/51

Example

```
>
```

NEW
---

| #    commands/| arguments | flags |
|------|------|------|
| 52 | none | |

Create a new EmbPattern with a new tab in the GUI.

NIGHT
-----

| #    commands/| arguments | flags |
|------|------|------|
| 53 | none | |

NUM-SELECTED
------------

| #    commands/| arguments | flags |
|------|------|------|
| 54 | none | |

```
> NUM-SELECTED
12
```

#    commands/054-open.rst
#    commands/056-pan.rst
#    commands/057-paste.rst
#    commands/063-print.rst
#    commands/064-print-area.rst
#    commands/067-exit.rst
#    commands/068-redo.rst
#    commands/069-rotate-selected.rst
#    commands/070-rubber.rst
#    commands/071-scale-selected.rst
#    commands/072-select-all.rst
#    commands/073-settings-dialog.rst

## SET-BACKGROUND-COLOR

#    commands/74

## SET-CROSSHAIR-COLOR

#    commands/75

## SET-CURSOR-SHAPE

#    commands/76

## SET-GRID-COLOR

#    commands/77

## SET-PROMPT-PREFIX

#    commands/78

## SET-RUBBER-FILTER

#    commands/79

## SET-RUBBER-MODE

#    commands/80

## SET-RUBBER-POINT

#    commands/81

## SET-RUBBER-TEXT

#    commands/82

## SPARE-RUBBER

#    commands/83

## TIP-OF-THE-DAY

#    commands/84

## TODO

 #    commands/85

## VERSION

#    commands/87

## VULCANIZE

#    commands/88

## WHATS-THIS

#    commands/89

## WINDOW-CLOSE

#    commands/90

## WINDOW-CLOSE-ALL

#    commands/91

## WINDOW-TILE

#    commands/92

## WINDOW-CASCADE

#    commands/93

## WINDOW-NEXT

#    commands/94

## WINDOW-PREVIOUS

#    commands/95

#``zoom`` command

 #    commands/96

#``layer-editor`` command

#    commands/100

#``make-layer-current`` command

#    commands/101

#``text-bold`` command

#    commands/102

## TEXT-ITALIC

#    commands/103

## TEXT-UNDERLINE

#    commands/104

## TEXT-STRIKEOUT

#    commands/105

## TEXT-OVERLINE

#    commands/106

## LAYER-PREVIOUS

#    commands/107

## ICON16

#    commands/108

## ICON24

#    commands/109

## ICON32

#    commands/110

## ICON48

#    commands/111

## ICON64

#    commands/112

## ICON128

#    commands/113

## SAVE

| #    commands/| arguments | flags |
|------|------|------|
| 114 | none | |

Save the current loaded EmbPattern to the current filename.

## SAVEAS

| #    commands/| arguments | flags |
|------|------|------|
| 115 | string | |

Save the current loaded EmbPattern to the supplied filename in argument 0.

## PAN-REAL-TIME

#    commands/116

## PAN-POINT

#    commands/117

## PAN-LEFT

#    commands/118

## PAN-RIGHT

#    commands/119

## PAN-UP

#    commands/120

## PAN-DOWN

#    commands/121

## ZOOM-REAL-TIME

#    commands/122

## ZOOM-PREVIOUS

#    commands/123

## ZOOM-WINDOW

#    commands/124

## ZOOM-DYNAMIC

#    commands/125

## ZOOM-OUT

#    commands/126

## ZOOM-EXTENTS

#    commands/127

## LAYERS

#    commands/128

## LAYER-SELECTOR

#    commands/129

## TREBLECLEF

#    commands/130

## COLOR-SELECTOR

#    commands/131

## LINE-TYPE-SELECTOR

#    commands/132

## LINE-WEIGHT-SELECTOR

#    commands/133

## ZOOM-SCALE

#    commands/134

## ZOOM-CENTER

#    commands/135

## HIDE-ALL-LAYERS

#    commands/136

## ZOOM-SELECTED

#    commands/137

## ZOOM-ALL

#    commands/138

## ADD-HEART

#    commands/139

## ADD-SINGLE-LINE-TEXT

#    commands/140

## SHOW-ALL-LAYERS

#    commands/141

## FREEZE-ALL-LAYERS

#    commands/142

## THAW-ALL-LAYERS

#    commands/143

## LOCK-ALL-LAYERS

#    commands/144

## UNLOCK-ALL-LAYERS

#    commands/145

## ADD-DOLPHIN

#    commands/146

## ADD-DISTANCE

#    commands/147

## LOCATE-POINT

#    commands/148

## QUICKSELECT

#    commands/149

## SPELLCHECK

#    commands/150

## DISTANCE

#    commands/151

## MOVE

#    commands/152

## QUICKLEADER

#    commands/153

## RGB

 #    commands/154

## ROTATE

#    commands/155

## SANDBOX

#    commands/156

## ADD-SNOWFLAKE

#    commands/157

## ADD-STAR

| 158 | `STAR` | mouse co-ords |

Adds a star to the vector layer at the mouse co-ords.

## DELETE

#    commands/159

## SCALE

| #    commands/| arguments | flags |
|------|------|------|
| 160 | selected objects, real number | |

Scale all selected objects by the number supplied, without selection scales the
entire design.

## SINGLE-LINE-TEXT

#    commands/161

## SYSWINDOWS

#    commands/162

BREAK_AT_POINT
--------------

#    commands/171

BREAK_2_POINTS
--------------

#    commands/172

UNITS
-----

#    commands/173

DIVIDE
------

#    commands/174

GRID
----

#    commands/175

GRIPHOT
-------

#    commands/176

GRIPCOLOR
---------

#    commands/177

GRIPCOOL
--------

#    commands/178

GRIPSIZE
--------

#    commands/179

AREA
----

#    commands/180

| 15 | `AREA` | Selected objects |

CHAMFER
-------

#    commands/181

PICK-ADD
--------

#    commands/182

FILLET
------

#    commands/182

EXTEND
------

#    commands/183

## PROGRAM

#    commands/184

Aliases PROG

## PLAYBACK

#    commands/185

## HIGHLIGHT

#    commands/186

## ARRAY

#    commands/187

ADD-INFINITE-LINE}
\index{ADD-INFINITE-LINE}

\begin{center}
\begin{tabular}{l | l | l}
#    commands/& arguments & flags \\
8 & none &
\end{tabular}
\end{center}

ADD-LINE}
\index{ADD-LINE}

\begin{center}
\begin{tabular}{l | l | l}
#    commands/& arguments & flags \\
9 & none &
\end{tabular}
\end{center}

ADD-PATH}
\index{ADD-PATH}

#    commands/10

ADD-POINT}
\index{ADD-POINT}

#    commands/11

ADD-POLYGON}
\index{ADD-POLYGON}

#    commands/12

ADD-POLYLINE}
\index{ADD-POLYLINE}

#    commands/13

ADD-RAY}
\index{ADD-RAY}

#    commands/14

ADD-RECTANGLE}
\index{ADD-RECTANGLE}

#    commands/15

ADD-REGULAR-POLYGON}
\index{ADD-REGULAR-POLYGON}

#    commands/16

ADD-ROUNDED-RECTANGLE}
#    commands/17

ADD-RUBBER}
\index{ADD-RUBBER}

#    commands/18

ADD-SLOT}
#    commands/19

ADD-TEXT-MULTI}
#    commands/20

ADD-TEXT-SINGLE}
#    commands/21

ADD-TO-SELECTION}
#    commands/22

ADD-TRIANGLE}
#    commands/23

ADD-VERTICAL-DIMENSION}
#    commands/24

ALERT}
#    commands/25

ALLOW-RUBBER}
#    commands/26

APPEND-HISTORY}
#    commands/27

CALCULATE-ANGLE}
#    commands/28

CALCULATE-DISTANCE}
#    commands/29

CHANGELOG}
#    commands/30

CLEAR-RUBBER}
#    commands/31

CLEAR-SELECTION}
#    commands/32
#    commands/033-copy.rst
#    commands/034-copy-selected.rst
#    commands/035-cut.rst
#    commands/036-cut-selected.rst
#    commands/037-day.rst
#    commands/038-debug.rst

DELETE-SELECTED}
#    commands/39.rst

DESIGN-DETAILS}
#    commands/40.rst

DO-NOTHING}
#    commands/41.rst

END}
#    commands/42.rst

ERROR}
#    commands/43.rst

HELP}
#    commands/44.rst

ICON}
#    commands/45.rst

INIT}
#    commands/46.rst


MIRROR-SELECTED}
#    commands/48.rst

MOUSE-X}
#    commands/49.rst

MOUSE-Y}
#    commands/50.rst

MOVE-SELECTED}
#    commands/051-move-selected.rst

#    commands/052-new.rst
#    commands/053-night.rst
#    commands/054-num-selected.rst
#    commands/055-open.rst
#    commands/056-pan.rst
#    commands/057-paste.rst
#    commands/059-perpendicular-distance.rst
#    commands/060-platform.rst
#    commands/061-preview-off.rst
#    commands/062-preview-on.rst
#    commands/065-qsnap-x.rst
#    commands/066-qsnap-y.rst
#    commands/067-exit.rst
#    commands/068-redo.rst
#    commands/069-rotate-selected.rst
#    commands/070-rubber.rst
#    commands/071-scale-selected.rst
#    commands/072-select-all.rst
#    commands/073-settings-dialog.rst
#    commands/81-set-rubber-point.rst
#    commands/82-set-rubber-text.rst
#    commands/83-spare-rubber.rst
#    commands/84-tip-of-the-day.rst
#    commands/85-todo.rst
#    commands/87-version.rst
#    commands/88-vulcanize.rst
#    commands/89-whats-this.rst
#    commands/90-window-close.rst
#    commands/91-window-close-all.rst
#    commands/92-window-tile.rst
#    commands/93-window-cascade.rst
#    commands/94-window-next.rst
#    commands/95-window-previous.rst
#    commands/96-zoom.rst
#    commands/103-text-italic.rst
#    commands/104-text-underline.rst
#    commands/105-text-strikeout.rst
#    commands/106-text-overline.rst
#    commands/107-layer-previous.rst
#    commands/108-icon16.rst
#    commands/109-icon24.rst
#    commands/110-icon32.rst
#    commands/111-icon48.rst
#    commands/112-icon64.rst
#    commands/113-icon128.rst
#    commands/114-save.rst
#    commands/115-saveas.rst
#    commands/116-pan-real-time.rst
#    commands/117-pan-point.rst
#    commands/118-pan-left.rst
#    commands/119-pan-right.rst
#    commands/120-pan-up.rst
#    commands/121-pan-down.rst
#    commands/122-zoom-real-time.rst
#    commands/123-zoom-previous.rst
#    commands/124-zoom-window.rst
#    commands/125-zoom-dynamic.rst
#    commands/126-zoom-out.rst
#    commands/127-zoom-extents.rst
#    commands/128-layers.rst

