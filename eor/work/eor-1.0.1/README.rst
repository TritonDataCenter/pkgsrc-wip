===
EOR
===

---------------------------------------
Exclusive OR - Redundant Data Generator
---------------------------------------

TOC
===

- `About`_

- `Tutorial`_

- `Install`_

- `License`_

- `Contact`_

About
=====

.. {{{1

This program takes a set of files and generates a redundant file using the
*exclusive or* bit operation. Later, if any of the original files happens to be
lost or damaged, we can use the redundant file as a wildcard and regenerate the
lost file again. This process is similar to what RAID-5 does to protect data on
disk arrays.

The primary purpose of this tool is to protect author's photo archive stored on
a set of DVDs (which are not 100% reliable), but the program use is actually
universal.

.. }}}1

Tutorial
========

.. {{{1

Suppose you have three (or two or more) archive files of similar size 500-600
MB, each of which is going to be burned on a separate CD. Let's generate
another file (a *redundant* or a *parity* file) from the originals and burn it
on an additional CD.  The size of the additional file will be the same like the
size of the largest original::

    eor orig_1.zip orig_2.zip orig_3.zip > parity.eor

And now imagine you have just lost the second CD in the set. Since you were
smart and had created the parity CD (using *eor*), you can easily regenerate
your lost CD data. To do so, just gather all the remaining CDs including the
redundant one and run::

    eor -w 524288000 orig_1.zip parity.eor orig_3.zip > orig_2.zip

Bravo! You got your lost photographs back! And it is all there is to it :)

Notes
-----

1. The strange number ``524288000`` only says that the size of the lost
   original file was ``524288000`` Bytes (i.e. 500 MB).

2. The order of the input files is unimportant (strange enough!).

3. The process of generating the parity file is exactly the same like the
   process of regenerting the lost file using the parity (even stranger!!!). You
   may only use ``-w`` option in addition to specify how much data should be
   (re)generated.

4. You can use ``eor -h`` to see quick help

.. }}}1

Install
=======

.. {{{1

You need a C compiler (*gcc*), *cmake* and make (*GNU make*).

::

    cmake .
    ccmake . # to fine-tune the build parameters (installation directory ...)
    make
    make install

.. }}}1

License
=======

.. {{{1

::

    Copyright 2010, Jan Šmydke
    All rights reserved.

    This file is a part of "eor"

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

      1. Redistributions of source code must retain the above copyright
         notice, this list of conditions and the following disclaimer.
      2. Redistributions in binary form must reproduce the above copyright
         notice, this list of conditions and the following disclaimer in the
         documentation and/or other materials provided with the distribution.

    THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND ANY
    EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR ANY
    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

.. }}}1

Contact
=======

Jan Šmydke <jan.smydke "at" jh-inst.cas.cz>

