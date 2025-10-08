Command Table
=============

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
