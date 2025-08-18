House Style
-----------

A basic set of guidelines to use when submitting code.

Indentation and Braces
~~~~~~~~~~~~~~~~~~~~~~

Tabs should not be used when indenting. Setup your IDE or text editor to use 4 spaces.

For functions: please put each brace on a new line::

	void
	function_definition(int argument)
	{
	    /* code block */
	}

For control statements: please put the first brace on the same line::

	if (condition) {
	    /* code block */    
	}

There is an exception to this control statement rule which is for switch statements::

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

When using braces, please put the brace on a new line, unless the code is specially formatted
for easier reading such as a block of one liner if/else statements.

Use exceptions sparingly.

Do not use ternary operator (?:) in place of if/else.

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

