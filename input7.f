      subroutine input7
c
c +---------------------------------------------------------------------
c | Author: Arjan Koning
c | Date  : January 20, 2023
c | Task  : Read input for first set of variables
c | Edited: Peter Karlsson; Date: May 7, 2023
c +---------------------------------------------------------------------
c
c ****************** Declarations and common blocks ********************
c
      include "talys.cmb"
      logical       idexist
      character*1   ch
      character*132 word(40),key,value
      character*132 line
      integer       i
c
c******************* Editing information******************************
c	Modified "input1" to read specific unique GEF FY file
c	Reads the value for keyword geffissionfileid.
c	Value is used in massdis.ff to read specific GEF FY file
c	when multihreading.
c*********************************************************************
c
c ************ Read unique yield file id from input lines ************
c
c idexist    : logical for existence of GEF yield file id
c
c 1. Initializations
c                                                  
      idexist=.false.
c
c nlines     : number of input lines
c getkeywords: subroutine to retrieve keywords and values from input
c              line
c inline     : input line
c word       : words on input line
c key        : keyword
c value      : value or string
c ch         : character
c
c The keyword is identified and the corresponding values are read.
c Erroneous input is immediately checked. The keywords and number of
c values on each line are retrieved from the input.
c
      do i=1,nlines
        line = inline(i)
        call getkeywords(line,word)
        key=word(1)
        value=word(2)
        ch=word(2)(1:1)
c
c 2. The yieldfileid is read
c
        if (key.eq.'geffissionfileid') then
          idexist=.true.
          yieldfileid=value
	else
	  yieldfileid='novalue'
          cycle
        endif
      enddo
      end

c---------------------------------------------------

Copyright (C)  2023 A.J. Koning, S. Hilaire and S. Goriely
