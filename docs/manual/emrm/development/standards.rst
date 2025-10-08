House Style
-----------

A basic set of guidelines to use when submitting code.
Embroidermodder Project Coding Standards
----------------------------------------

A basic set of guidelines to use when submitting code.

Code structure is mre important than style, so first we advise you read
\texttt{Design} and experimenting before getting into the specifics of code style.

\subsection{Where Code Goes}

Anything that deals with the specifics of embroidery file formats, threads,
rendering to images, embroidery machinery or command line interfaces should go 
in \texttt{libembroidery} not here.

\subsection{Where Non-compiled Files Go}

TODO:
   Like most user interfaces Embroidermodder is mostly data,
   so here we will have a list describing where each CSV goes.

\subsection{Ways in which we break style on purpose}

Most style guides advise you to keep functions short. We make a few pointed
exceptions to this where the overall health and functionality of the source code should benefit.

The \texttt{actuator} function will always be a mess and it should be: we're keeping
the total source lines of code down by encoding all user action into a descrete
sequence of strings that are all below \texttt{\_STRING\_LENGTH} in length. See
the section on the actuator (TODO) describing why any other solution we could
think  here would mean more more code without a payoff in speed of execution or
clarity.

\section{Version Control}

Being an open source project, developers can grab the latest code at any time and attempt to build it themselves. We try our best to ensure that it will build smoothly at any time, although occasionally we do break the build. In these instances, please provide a patch, pull request which fixes the issue or open an issue and notify us of the problem, as we may not be aware of it and we can build fine.

Try to group commits based on what they are related to: features/bugs/comments/graphics/commands/etc...
Naming Conventions
~~~~~~~~~~~~~~~~~~

#. Name variables and functions intelligently to minimize the need for comments.
   It should be immediately obvious what information it represents.
#. Short names such as ``x`` and ``y`` are fine when referring to coordinates.
#. Short names such as ``i`` and ``j`` are fine when doing loops.
#. Variable names should be ``camelCase``, starting with a lowercase word followed by uppercase word(s).
#. C++ Class Names should be ``CamelCase``, using all uppercase word(s).
#. C Functions that attempt to simulate namespacing, should be ``nameSpace_camelCase``.
#. All files and directories shall be lowercase and contain no spaces.
#. Do not repeat a variable name that already occurs in an outer scope.

When using braces, please put the brace on a new line, unless the code
is specially formatted for easier reading such as a block of one liner
if/else statements.

Use exceptions sparingly.

Do not use ternary operator (?:) in place of if/else.

Indentation and Braces
~~~~~~~~~~~~~~~~~~~~~~

Tabs should not be used when indenting. Setup your IDE or text editor to use 4 spaces.

For functions: please put each brace on a new line::

.. codeblock::

   void
   function_definition(int argument)
   {
	   /* code block */
   }

For control statements: please put the first brace on the same line::

.. codeblock::

   if (condition) {
	   /* code block */    
   }

There is an exception to this control statement rule which is for switch statements::

.. codeblock::

   switch (variable) {
   /* The case statement lies on the same level as the switch. */
   case NAME: {
	   /* code block: the braces are here to allow for local scope variables */
       break;
   }
   default:
       /* If the default doesn't have a new variable, then we don't need braces
        * around the break.
        */
       break;
   }


Version Control
~~~~~~~~~~~~~~~

Being an open source project, developers can grab the latest code at any time
and attempt to build it themselves. We try our best to ensure that it will build smoothly
at any time, although occasionally we do break the build. In these instances,
please provide a patch, pull request which fixes the issue or open an issue and
notify us of the problem, as we may not be aware of it and we can build fine.

Try to group commits based on what they are related to: features/bugs/comments/graphics/commands/etc...

Comments
~~~~~~~~

When creating new C/C++ files, please add the boilerplate copyright message
directing new programmers to this file.

When writing code, sometimes there are items that we know can be improved,
incomplete or need special clarification. In these cases, use the types of
comments shown below. They are pretty standard and are highlighted by many editors to
make reviewing code easier. We also use shell scripts to parse the code to find
all of these occurrences so someone wanting to go on a bug hunt will be able to
easily see which areas of the code need more love. Use the same convention
for both embroidermodder and libembroidery.

libembroidery is written in C and adheres to C89 standards. This means
that any C99 or C++ comments will show up as errors when compiling with
gcc. In any C code, you must use::

.. codeblock::

   /* C Style Comments */
   
   /* TODO: This code clearly needs more work or further review. */
   
   /* BUG: This code is definitely wrong. It needs fixed. */
   
   /* HACK: This code shouldn't be written this way or I don't feel
    * right about it. There may a better solution */
   
   /* WARNING: Think twice (or more times) before changing this code.
    * I put this here for a good reason. */
   
   /* NOTE: This comment is much more important than lesser comments. */

These are rules for the general intended style of Embroidermodder's GUI source
code. Not included are anything that a compiler will warn you about: fixing
compiler warnings is more important than fixing style.

Most of this section is rationale, so skip to the end for the summary.

NEW DEVELOPERS: if your patch to Embroidermodder doesn't follow these rules,
don't worry about it. We only ask that your source code follow the basic rules
in the developer training section. These rules are for sculpting Embroidermodder
into a body of code that is resiliant to future bugs and reliable for users.

Developer Prose
+++++++++++++++


Brevity
~~~~~~~

Readable source code is short. Developers have finite time and becoming
acquainted with more than 1000 lines of dense C code is often too high a bar
for a new developer to a project. However, this leads to a bunch of tradeoffs
that have caused issues, so instead we consider the ``minimal library``
rather than ``minimal code`` approach. Not everyone will have used the more
abstract, syntactic features of C++ like templates and operator overloading.
Even if they are capable developers with these features it makes debugging far
harder since the choice of called function is interpreted by the compiler and
compiler errors are hundred line monsters per infraction of "these are all of
the possible variations of this function that don't match".

Using C++'s ``unordered_map`` can simplify source code in that anything can
map to anything. However, it also means we don't have to associate related
structures. For example the ``action_table`` came together replacing a
collection of unordered maps with one, then replaced the mapping with labelled
indices. Since the ``actuator_core`` is a giant switch/case statement this
cuts the step of identifying the action by its label `std::string`.
The structure given by this table allowed the code to be much easier to
interpret. So for this reason we don't recommend the use unordered maps or
hashes any more.

Rigidity Vs. Ease of Modification
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Difficult to restructure code is good if the structure that's there is good.
It guides new developers into safe practices without having to explain them.
Therefore we want ease of modification that comes from well chosen `structs`
and a carefully curated global header of .

Macro Policy
~~~~~~~~~~~~

Macros are great, you can do all sorts with them. But it's easy to make readable
short code that is really difficult to safely modify.

Function Style
~~~~~~~~~~~~~~

#. Don't write a new convenience function unless there are two
   existing applications of it in the source code.
#. .


## House Style

A basic set of guidelines to use when submitting code.

### Naming Conventions

Name variables and functions intelligently to minimize the need for comments.
It should be immediately obvious what information it represents.
Short names such as x and y are fine when referring to coordinates.
Short names such as i and j are fine when doing loops.

Variable names should be \texttt{camelCase}, starting with a lowercase word followed by uppercase word(s).
C++ Class Names should be \texttt{CamelCase}, using all uppercase word(s).
C Functions that attempt to simulate namespacing, should be \texttt{"nameSpace\_camelCase"}.

All files and directories shall be lowercase and contain no spaces.

### Code Style

Tabs should not be used when indenting. Setup your IDE or text editor to use 4 spaces.

If you use KATE (KDE Advanced Text Editor), modelines are included in our code to enforce 
some of our coding standards. When creating new C/C++ files, please add
the modeline to the bottom of the file followed by a blank line. Always make sure there
is an extra blank line at the end of a file.

When using braces, please put the brace on a new line, unless the code is specially formatted
for easier reading such as a block of one liner if/else statements.

Use exceptions sparingly.

if/else is preferred over switch/case.

Do not use ternary operator (?:) in place of if/else.

Do not repeat a variable name that already occurs in an outer scope.

### Version Control

Being an open source project, developers can grab the latest code at any time
and attempt to build it themselves. We try our best to ensure that it will build smoothly
at any time, although occasionally we do break the build. In these instances,
please provide a patch, pull request which fixes the issue or open an issue and
notify us of the problem, as we may not be aware of it and we can build fine.

Try to group commits based on what they are related to: features/bugs/comments/graphics/commands/etc...

### Comments

When writing code, sometimes there are items that we know can be improved,
incomplete or need special clarification. In these cases, use the types of
comments shown below. They are pretty standard and are highlighted by many editors to
make reviewing code easier. We also use shell scripts to parse the code to find
all of these occurances so someone wanting to go on a bug hunt will be able to
easily see which areas of the code need more love.

libembroidery is written in C and adheres to C89 standards. This means
that any C99 or C++ comments will show up as errors when compiling with
gcc. In any C code, you must use:

```
/* C Style Comments */
/* TODO: This code clearly needs more work or further review. */
/* BUG: This code is definitely wrong. It needs fixed. */
/* HACK: This code shouldn't be written this way or I don't feel right about it. There may a better solution */
/* WARNING: Think twice (or more times) before changing this code. I put this here for a good reason. */
/* NOTE: This comment is much more important than lesser comments. */
```

These are rules for the general intended style of Embroidermodder's GUI source
code. Not included are anything that a compiler will warn you about: fixing
compiler warnings is more important than fixing style.

Most of this section is rationale, so skip to the end for the summary.

NEW DEVELOPERS: if your patch to Embroidermodder doesn't follow these rules,
don't worry about it. We only ask that your source code follow the basic rules
in the developer training section. These rules are for sculpting Embroidermodder
into a body of code that is resiliant to future bugs and reliable for users.

### Brevity

Readable source code is short. Developers have finite time and becoming
acquainted with more than 1000 lines of dense C code is often too high a bar
for a new developer to a project. However, this leads to a bunch of tradeoffs
that have caused issues, so instead we consider the ``minimal library``
rather than ``minimal code`` approach. Not everyone will have used the more
abstract, syntactic features of C++ like templates and operator overloading.
Even if they are capable developers with these features it makes debugging far
harder since the choice of called function is interpreted by the compiler and compiler
errors are hundred line monsters per infraction of ``these are all of the possible
variations of this function that don't match``.

Using C++'s \texttt{unordered\_map} can simplify source code in that anything can
map to anything. However, it also means we don't have to associate related structures.
For example the \texttt{action\_table} came together replacing a collection of unordered maps
with one, then replaced the mapping with labelled indices. Since the ``actuator\_core``
is a giant switch/case statement this cuts the step of identifying the action by its
label `std::string`.
The structure given by this table allowed the code to be much
easier to interpret. So for this reason we don't recommend the use unordered maps or hashes any more.

### Rigidity Vs. Ease of Modification

Difficult to restructure code is good if the structure that's there is good.
It guides new developers into safe practices without having to explain them.
Therefore we want ease of modification that comes from well chosen `structs`
and a carefully curated global header of .

### Developer Prose

### Macro Policy

Macros are great, you can do all sorts with them. But it's easy to make readable
short code that is really difficult to safely modify.

### Function Style

1. Don't write a new convenience function unless there are two existing applications of it in the source code.
2. .

### Summary

* .


\section{Embroidermodder Project Coding Standards}

Rather than maintain our own standard for style, please defer to
the Python's PEP 7 %\citep{pep7}
for C style and emulating that in C++.

A basic set of guidelines to use when submitting code. Defer to the PEP7 standard with the following additions:

\begin{enumerate}
#. All files and directories shall be lowercase and contain no spaces.
#. Structs and class names should use \texttt{LeadingCapitals}.
#. Enums and constants should be ``BLOCK\_CAPITALS``.
#. Class members and functions without a parent class should be
    \texttt{snake\_case}. With the exception of when one of the words is a
    \texttt{class} name from libembroidery in which case it has the middle capitals
    like this: \texttt{embArray\_add}.
#. Don't use exceptions.
#. Don't use ternary operator (?:) in place of if/else.
#. Don't repeat a variable name that already occurs in an outer scope.
\end{enumerate}

\section{Version Control}

Being an open source project, developers can grab the latest code at any
time and attempt to build it themselves. We try our best to ensure that
it will build smoothly at any time, although occasionally we do break
the build. In these instances, please provide a patch, pull request
which fixes the issue or open an issue and notify us of the problem, as
we may not be aware of it and we can build fine.

Try to group commits based on what they are related to:
features/bugs/comments/graphics/commands/etc...

\subsection{Comments}

When writing code, sometimes there are items that we know can be
improved, incomplete or need special clarification. In these cases, use
the types of comments shown below. They are pretty standard and are
highlighted by many editors to make reviewing code easier. We also use
shell scripts to parse the code to find all of these occurrences so
someone wanting to go on a bug hunt will be able to easily see which
areas of the code need more love.

libembroidery and Embroidermodder are written in C and adheres to C89 standards. This means
that any C99 or C++ comments will show up as errors when compiling with
gcc. In any C code, you must use:

.. code::
   /* Use C Style Comments within code blocks.
    *
    * Use Doxygen style code blocks to place todo, bug, hack, warning,
    * and note items like this:
    *
    * \todo EXAMPLE: This code clearly needs more work or further review.
    *
    * \bug This code is definitely wrong. It needs fixed.
    *
    * \hack This code shouldn't be written this way or I don't
    * feel right about it. There may a better solution
    *
    * \warning Think twice (or more times) before changing this code.
    * I put this here for a good reason.
    *
    * \note This comment is much more important than lesser comments.
    */


