`undo` command
--------------

Reverses the last action carried out by the user.

For some commands, like `pan-up` the `undo` command acts on a group
of similar commands rather than the last action, in this case the group
is called `Navigation`. So if the user enters the sequence `pan-up`,
`pan-left`, `pan-up` then `undo` all 3 of the navigation commands are
reversed.

