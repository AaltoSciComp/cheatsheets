Cheatsheets
===========

Various scientific computing cheatsheets for Aalto University (but may
be useful to others).  <https://aaltoscicomp.github.io/cheatsheets/>


Editing cheatsheets and contributing
------------------------------------

Cheetsheets master files are stored in Google Docs (ask us for the
link).  You also need to ask to be given write access.  Edit the pages
there, as are.  Increment the version number appropriate to the
changes you make (I usually don't for the most minor of changes)

Download the Google Doc file as a PDF to the root directory of the git
repository.  At least for me, they are downloaded with the right
filenames for the Makefile, but it's possible that this changes in the
future, in which case you need to figure out what went wrong.

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


Status and maintenance
----------------------

In production, these are always being updated.

Developed at Aalto University, contact: Richard Darst
