      subroutine talysinput
c
c +---------------------------------------------------------------------
c | Author: Arjan Koning
c | Date  : January 29, 2023
c | Task  : User input and defaults
c | Edited: Peter Karlsson; Date: May 7 2023
c +---------------------------------------------------------------------
c
c ******************** Editing information ********************************
c	Added "call input7" to read unique GEF FY file when multithreding
c *************************************************************************
c
c ******************** Set defaults and read input *********************
c
c readinput   : subroutine to read input
c input1      : subroutine to read input for first set of variables
c input2      : subroutine to read input for second set of variables
c input3      : subroutine to read input for third set of variables
c input4      : subroutine to read input for fourth set of variables
c input5      : subroutine to read input for fifth set of variables
c input6      : subroutine to read input for sixth set of variables
c input7      : subroutine to read name for unique GEF FY file
c checkkeyword: subroutine to check for errors in keywords
c checkvalue  : subroutine to check for errors in values
c
      call readinput
      call input1
      call input2
      call input3
      call input4
      call input5
      call input6
      call input7
      call checkkeyword
      call checkvalue
      return
      end
Copyright (C)  2023 A.J. Koning, S. Hilaire and S. Goriely
