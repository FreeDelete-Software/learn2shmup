# Unit Tests

Unit tests automatically check individual parts of code. The project's
development will not be entirely test-driven, but a significant effort will be
made to create automated testing of code.


## GUT Framework

> **TIP:** All of GUT's assertions, along with most of its other utilities, are documented on a [single page](https://github.com/bitwes/Gut/wiki/Asserts-and-Methods) in its wiki.

Tests here utilize the [GUT](https://github.com/bitwes/Gut) addon (version
7.4.1) included with the codebase. All unit tests are intended to be run
from the GUT panel.


## Project guidelines for unit tests

**ALWAYS write unit tests when...**

1. Troubleshooting anything
2. Fixing bugs
3. Code has the potential to cause serious problems
4. It seems important or useful
5. You want to


**It's ok to not write a unit test if...**

1. The automated test is more complicated and/or confusing than manual testing
2. Something is a temporary solution


**Suggestions:**

* Try to make code in test scripts easy to reuse for testing other components.
* Try to keep naming conventions consistent.
