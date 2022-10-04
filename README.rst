Cheatsheets
===========

Various scientific computing cheatsheets for Aalto University (but may
be useful to others).  <https://aaltoscicomp.github.io/cheatsheets/>

Printing
--------

A short user test said that printing two-sided "short edge (flip)" is
more natural for readers.


Editing cheatsheets and contributing
------------------------------------

Cheetsheets master files are stored in Google Docs (ask us for the
link).  You also need to ask to be given write access.  Edit the pages
there, as are.  Increment the version number appropriate to the
changes you make (I usually don't increment the numbers for minor
changes before they are heavily distributed).

Download the Google Doc file as a PDF to the root directory of the git
repository with `make NAME-dl`.

Run the ``Makefile output-name.pdf`` to compile the cheatsheet.  The
only dependency should be ``pdfnup``, which is in the Debian package
``texlive-extra-utils``.

``git commit`` the updated cheatsheets.

Cheatsheets are served via Github Pages directly from the master
branch.  Yes, this is mixing binary compiled files with code, which we
will work on changing later.  Expect revisions to this process in the
future.  It's probably that we will force-push to flatten history when
that happens.

New cheatsheets: explicitly ``git add -f`` the new cheatsheet, since
``*.pdf`` is ignored (so that downloaded PDFs are hidden by default).


Non-automated cheatsheets
-------------------------

* `git-cheatsheet.pdf`: custom version of the Gitlab cheatsheet


Status and maintenance
----------------------

In production, these are always being updated.

Developed at Aalto University, contact: Richard Darst.  Feel free to
contact if you would like the Google Drive masters for making your own
versions.
