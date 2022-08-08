# custom_transition_pop

This project demonstrates the problem of using context.pop() on a page that had a custom transition.

## how to reproduce
On a page without custom transition, we can either use context.pop() or Navigator.pop(context) without any problem.
-> click on normal transition, and then click on any button
On a page with custom transition, Navigator.pop(context) works, but contex.pop() raises an Exception.
