@echo off
cls
title Welcome
color f2
goto skip
color 36
:skip
echo Hello!
echo This is a chess application.
echo Let's Get started!
echo (Press something to continue)
pause >nul
:menu
color f2
cls
title Menu
echo Welcome to Chess!
echo   -+-+-===-+-+-
echo (Press a key to continue)
pause >nul
:menu2
title Menu
cls
echo Welcome to Chess!
echo   -+-+-===-+-+-
echo Would you like to:
echo [A] Play the Game
echo.
echo OR
echo.
echo [B] Learn HOW to Play?
echo.
echo Or would you like to instead
echo.
echo [C] Return to the lobby.
echo.
echo OR
echo.
echo [D] View the credits
echo.
echo OR
echo.
echo [E] Version No.
echo.
echo OR
echo. 
echo [F] other
echo.
echo ????????????????????

set /p menuchoice=

if %menuchoice% == a goto game
if %menuchoice% == A goto game
if %menuchoice% == b goto help
if %menuchoice% == B goto help
if %menuchoice% == c goto lobbyreset
if %menuchoice% == C goto lobbyreset
if %menuchoice% == d goto credits
if %menuchoice% == D goto credits
if %menuchoice% == e goto Version No.
if %menuchoice% == E goto Version No.
if %menuchoice% == f goto other
if %menuchoice% == F goto other

title ERROR
echo INCORRECT INPUT!!!
echo The game will now end and take you to the main menu.
echo (Press a key to continue.)
pause >nul
start C:\Users\Jordan\Desktop\BatchGame\MainMenu.bat
exit


exit
:lobbyreset
cls
title Leave?
echo Do you want to return to the lobby?
echo Y/N?

set /p lobresyn=

if %lobresyn% == y goto lobresinit
if %lobresyn% == Y goto lobresinit
if %lobresyn% == n goto menu2
if %lobresyn% == N goto menu2

cls

title ERROR
echo INCORRECT INPUT!!!
echo The game will now end and take you to the main menu.
echo (Press a key to continue.)
pause >nul
start C:\Users\Jordan\Desktop\BatchGame\MainMenu.bat
exit

exit
:lobresinit
cls
title To return to lobby, press a key.
color fa
echo You will now return to the lobby.
echo (Press a key to continue.)
pause >nul
start C:\Users\Jordan\Desktop\BatchGame\Files\GameMenu.bat
exit

exit
:help
cls
title Help: Page 1
echo Help: Page 1
echo.
echo ---------------------------------------------
echo.
echo [0] [0] [0] [0] [0] [0] [0] [0]
echo [0] [0] [0] [0] [0] [0] [0] [0]
echo [0] [0] [0] [0] [0] [0] [0] [0]
echo [0] [0] [0] [0] [0] [0] [0] [0]
echo [0] [0] [0] [0] [0] [0] [0] [0]
echo [0] [0] [0] [0] [0] [0] [0] [0]
echo [0] [0] [0] [0] [0] [0] [0] [0]
echo [0] [0] [0] [0] [0] [0] [0] [0]
echo This is what the board will mainly look like.
echo Press a key to go to the next page...
pause >nul
cls
title Help: Page 2
echo Help: Page 2
echo.
echo ---------------------------------------------
echo.
echo    1   2   3   4   5   6   7   8
echo  A[0] [0] [0] [0] [0] [0] [0] [0]
echo  B[0] [0] [0] [0] [0] [0] [0] [0]
echo  C[0] [0] [0] [0] [0] [0] [0] [0]
echo  D[0] [0] [0] [0] [0] [0] [0] [0]
echo  E[0] [0] [0] [0] [0] [0] [0] [0]
echo  F[0] [0] [0] [0] [0] [0] [0] [0]
echo  G[0] [0] [0] [0] [0] [0] [0] [0]
echo  H[0] [0] [0] [0] [0] [0] [0] [0]
echo The board will also have these letters/numbers.
echo You will use this grid to tell your pieces where to go.
echo Press a key to go to the next page...
pause >nul
cls
title Help: Page 3
echo Help: Page 3
echo.
echo ---------------------------------------------
echo.
echo    1   2   3   4   5   6   7   8
echo  A[Y] [0] [0] [0] [0] [0] [0] [0]
echo  B[0] [0] [0] [0] [0] [0] [0] [0]
echo  C[0] [0] [0] [0] [0] [0] [0] [0]
echo  D[0] [0] [0] [0] [0] [Z] [0] [0]
echo  E[0] [0] [0] [0] [0] [0] [0] [0]
echo  F[0] [0] [0] [0] [0] [0] [0] [0]
echo  G[0] [0] [0] [0] [0] [0] [0] [0]
echo  H[0] [0] [0] [0] [0] [0] [0] [0]
echo For Example, if I wanted to move a piece from the Y to the Z,
echo then I would input: "1, A; 6, D"
echo Press a key to go to the next page...
pause >nul
cls
title Help: Page 4
echo Help: Page 4
echo.
echo ---------------------------------------------
echo.
echo    1   2   3   4   5   6   7   8
echo  A[0] [0] [0] [0] [0] [0] [0] [0]
echo  B[0] [0] [0] [0] [0] [0] [0] [0]
echo  C[0] [0] [0] [0] [0] [0] [0] [0]
echo  D[0] [0] [0] [0] [0] [0] [0] [0]
echo  E[0] [0] [0] [0] [0] [0] [0] [0]
echo  F[0] [0] [0] [0] [0] [0] [0] [0]
echo  G[0] [0] [0] [0] [0] [0] [0] [0]
echo  H[0] [0] [0] [0] [0] [0] [0] [0]
echo Then, just try to make a checkmate. In the future, the
echo game will have a computer player and checking system,
echo and it will detect your checkmate.
echo Press a key to go to the next page...
pause >nul
cls
title Help: Page 5
echo Help: Page 5
echo.
echo ---------------------------------------------
echo.
echo The pieces are represented by the following characters: 
echo Pawn---Rook---Knight---Bishop---King---Queen---Blank--Super Pawn--The Jay--Gr. Kn.--
echo   1     7       2        4        8      9       0         5     6       3
rem    1     I       2        #        $      :       0         ^           @       *
echo The pieces are represented... (continued)
echo The Kay--The N--
echo   10       11
rem    !        & 
echo Press a key to go to the next page...
pause >nul
cls
title Help: Page 6
echo Help: Page 6
echo.
echo --------------------------------------------------------------------------------
echo Note: There are five new pieces: The Jay, The Super Pawn, and the Great knight, 
echo the other two will be on the next page.
echo Note: The Jay: to be discussed in the future. 
echo Note: The Super Pawn: This piece can go in any direction and take pieces in 
echo its path.
echo Note: The Great Knight (gr Kn.) can go unlimited spaces as long as it forms 
echo an "L". 
echo Press a key to go to the next page...
pause >nul
cls
title Help: Page 7
echo Help: Page 7
echo.
echo ------------------------------------------------------------------------------
echo Note: The last two chess pieces, the Kay and the N, will be spoken of in this 
echo page.
echo Note: The Kay will be discussed in the near future.
echo Note: The N will be discussed in the near future.

echo Press a key to return to the main menu.
pause >nul
goto menu

exit
:game
cls
title Game-Chess
set /a a1=W--7
set /a a2=W--1
set /a a3=W--6
set /a a4=0
set /a a5=0
set /a a6=B-5
set /a a7=B-1
set /a a8=B-7
set /a b1=W--2
set /a b2=W--1
set /a b3=w--3
set /a b4=0
set /a b5=0
set /a b6=b-3
set /a b7=B-1
set /a b8=B-2
set /a c1=W--4
set /a c2=W--1
set /a c3=10
set /a c4=0
set /a c5=0
set /a c6=b-6
set /a c7=B-1
set /a c8=B-4
set /a d1=W--8
set /a d2=W--1
set /a d3=11
set /a d4=0
set /a d5=0
set /a d6=b-1
set /a d7=B-1
set /a d8=B-8
set /a e1=W--9
set /a e2=W--1
set /a e3=w--1
set /a e4=0
set /a e5=0
set /a e6=b-1
set /a e7=-11
set /a e8=B-9
set /a f1=W--4
set /a f2=W--1
set /a f3=w--6
set /a f4=0
set /a f5=0
set /a f6=b-1
set /a f7=-10
set /a f8=B-4
set /a g1=W--2
set /a g2=W--1
set /a g3=w--3
set /a g4=0
set /a g5=0
set /a g6=B-3
set /a g7=B-10
set /a g8=B-2
set /a h1=W--7
set /a h2=W--1
set /a h3=W--05
set /a h4=0
set /a h5=0
set /a h6=B-6
set /a h7=B-1
set /a h8=B-7

echo Press any key to start!
pause >nul
cls
:input
title Game-Chess: Jordan's Turn!
cls
echo    1   2   3   4   5   6   7   8
echo  A[%a1%] [%a2%] [%a3%] [%a4%] [%a5%] [%a6%] [%a7%] [%a8%]
echo  B[%b1%] [%b2%] [%b3%] [%b4%] [%b5%] [%b6%] [%b7%] [%b8%]
echo  C[%c1%] [%c2%] [%c3%] [%c4%] [%c5%] [%c6%] [%c7%] [%c8%]
echo  D[%d1%] [%d2%] [%d3%] [%d4%] [%d5%] [%d6%] [%d7%] [%d8%]
echo  E[%e1%] [%e2%] [%e3%] [%e4%] [%e5%] [%e6%] [%e7%] [%e8%]
echo  F[%f1%] [%f2%] [%f3%] [%f4%] [%f5%] [%f6%] [%f7%] [%f8%]
echo  G[%g1%] [%g2%] [%g3%] [%g4%] [%g5%] [%g6%] [%g7%] [%g8%]
echo  H[%h1%] [%h2%] [%h3%] [%h4%] [%h5%] [%h6%] [%h7%] [%h8%]
echo.
echo Jordan-Your Turn!
echo Press a key to input first square!
pause >nul
cls
echo    1   2   3   4   5   6   7   8
echo  A[%a1%] [%a2%] [%a3%] [%a4%] [%a5%] [%a6%] [%a7%] [%a8%]
echo  B[%b1%] [%b2%] [%b3%] [%b4%] [%b5%] [%b6%] [%b7%] [%b8%]
echo  C[%c1%] [%c2%] [%c3%] [%c4%] [%c5%] [%c6%] [%c7%] [%c8%]
echo  D[%d1%] [%d2%] [%d3%] [%d4%] [%d5%] [%d6%] [%d7%] [%d8%]
echo  E[%e1%] [%e2%] [%e3%] [%e4%] [%e5%] [%e6%] [%e7%] [%e8%]
echo  F[%f1%] [%f2%] [%f3%] [%f4%] [%f5%] [%f6%] [%f7%] [%f8%]
echo  G[%g1%] [%g2%] [%g3%] [%g4%] [%g5%] [%g6%] [%g7%] [%g8%]
echo  H[%h1%] [%h2%] [%h3%] [%h4%] [%h5%] [%h6%] [%h7%] [%h8%]
echo.
echo Input number!
echo ?

set /p p1num1=

if %p1num1% == checkmate (
  set /a winner=2
  goto win
)
if %p1num1% == menu (
  goto menu
)

echo Input letter!
echo ?

set /p p1num2=

echo Input second number!
echo ?

set /p p1num3=


echo Input second letter!
echo ?

set /p p1num4=


echo Okay!
echo Now wait a second for the board to come up...

if %p1num2% == a (
  if %p1num1% == 1 (
    set /a type=%a1%
    set /a a1=0
  )
  if %p1num1% == 2 (
    set /a type=%a2%
    set /a a2=0
  )
  if %p1num1% == 3 (
    set /a type=%a3%
    set /a a3=0
  )
  if %p1num1% == 4 (
    set /a type=%a4%
    set /a a4=0
  )
  if %p1num1% == 5 (
    set /a type=%a5%
    set /a a5=0
  )
  if %p1num1% == 6 (
    set /a type=%a6%
    set /a a6=0
  )
  if %p1num1% == 7 (
    set /a type=%a7%
    set /a a7=0
  )
  if %p1num1% == 8 (
    set /a type=%a8%
    set /a a8=0
  )
)
if %p1num2% == b (
  if %p1num1% == 1 (
    set /a type=%b1%
    set /a b1=0
  )
  if %p1num1% == 2 (
    set /a type=%b2%
    set /a b2=0
  )
  if %p1num1% == 3 (
    set /a type=%b3%
    set /a b3=0
  )
  if %p1num1% == 4 (
    set /a type=%b4%
    set /a b4=0
  )
  if %p1num1% == 5 (
    set /a type=%b5%
    set /a b5=0
  )
  if %p1num1% == 6 (
    set /a type=%b6%
    set /a b6=0
  )
  if %p1num1% == 7 (
    set /a type=%b7%
    set /a b7=0
  )
  if %p1num1% == 8 (
    set /a type=%b8%
    set /a b8=0
  )
)
if %p1num2% == c (
  if %p1num1% == 1 (
    set /a type=%c1%
    set /a c1=0
  )
  if %p1num1% == 2 (
    set /a type=%c2%
    set /a c2=0
  )
  if %p1num1% == 3 (
    set /a type=%c3%
    set /a c3=0
  )
  if %p1num1% == 4 (
    set /a type=%c4%
    set /a c4=0
  )
  if %p1num1% == 5 (
    set /a type=%c5%
    set /a c5=0
  )
  if %p1num1% == 6 (
    set /a type=%c6%
    set /a c6=0
  )
  if %p1num1% == 7 (
    set /a type=%c7%
    set /a c7=0
  )
  if %p1num1% == 8 (
    set /a type=%c8%
    set /a c8=0
  )
)
if %p1num2% == d (
  if %p1num1% == 1 (
    set /a type=%d1%
    set /a d1=0
  )
  if %p1num1% == 2 (
    set /a type=%d2%
    set /a d2=0
  )
  if %p1num1% == 3 (
    set /a type=%d3%
    set /a d3=0
  )
  if %p1num1% == 4 (
    set /a type=%d4%
    set /a d4=0
  )
  if %p1num1% == 5 (
    set /a type=%d5%
    set /a d5=0
  )
  if %p1num1% == 6 (
    set /a type=%d6%
    set /a d6=0
  )
  if %p1num1% == 7 (
    set /a type=%d7%
    set /a d7=0
  )
  if %p1num1% == 8 (
    set /a type=%d8%
    set /a d8=0
  )
)
if %p1num2% == e (
  if %p1num1% == 1 (
    set /a type=%e1%
    set /a e1=0
  )
  if %p1num1% == 2 (
    set /a type=%e2%
    set /a e2=0
  )
  if %p1num1% == 3 (
    set /a type=%e3%
    set /a e3=0
  )
  if %p1num1% == 4 (
    set /a type=%e4%
    set /a e4=0
  )
  if %p1num1% == 5 (
    set /a type=%e5%
    set /a e5=0
  )
  if %p1num1% == 6 (
    set /a type=%e6%
    set /a e6=0
  )
  if %p1num1% == 7 (
    set /a type=%e7%
    set /a e7=0
  )
  if %p1num1% == 8 (
    set /a type=%e8%
    set /a e8=0
  )
)
if %p1num2% == f (
  if %p1num1% == 1 (
    set /a type=%f1%
    set /a f1=0
  )
  if %p1num1% == 2 (
    set /a type=%f2%
    set /a f2=0
  )
  if %p1num1% == 3 (
    set /a type=%f3%
    set /a f3=0
  )
  if %p1num1% == 4 (
    set /a type=%f4%
    set /a f4=0
  )
  if %p1num1% == 5 (
    set /a type=%f5%
    set /a f5=0
  )
  if %p1num1% == 6 (
    set /a type=%f6%
    set /a f6=0
  )
  if %p1num1% == 7 (
    set /a type=%f7%
    set /a f7=0
  )
  if %p1num1% == 8 (
    set /a type=%f8%
    set /a f8=0
  )
)
if %p1num2% == g (
  if %p1num1% == 1 (
    set /a type=%g1%
    set /a g1=0
  )
  if %p1num1% == 2 (
    set /a type=%g2%
    set /a g2=0
  )
  if %p1num1% == 3 (
    set /a type=%g3%
    set /a g3=0
  )
  if %p1num1% == 4 (
    set /a type=%g4%
    set /a g4=0
  )
  if %p1num1% == 5 (
    set /a type=%g5%
    set /a g5=0
  )
  if %p1num1% == 6 (
    set /a type=%g6%
    set /a g6=0
  )
  if %p1num1% == 7 (
    set /a type=%g7%
    set /a g7=0
  )
  if %p1num1% == 8 (
    set /a type=%g8%
    set /a g8=0
  )
)
if %p1num2% == h (
  if %p1num1% == 1 (
    set /a type=%h1%
    set /a h1=0
  )
  if %p1num1% == 2 (
    set /a type=%h2%
    set /a h2=0
  )
  if %p1num1% == 3 (
    set /a type=%h3%
    set /a h3=0
  )
  if %p1num1% == 4 (
    set /a type=%h4%
    set /a h4=0
  )
  if %p1num1% == 5 (
    set /a type=%h5%
    set /a h5=0
  )
  if %p1num1% == 6 (
    set /a type=%h6%
    set /a h6=0
  )
  if %p1num1% == 7 (
    set /a type=%h7%
    set /a h7=0
  )
  if %p1num1% == 8 (
    set /a type=%h8%
    set /a h8=0
  )
)
if %p1num4% == a (
  if %p1num3% == 1 set /a a1=%type%
  if %p1num3% == 2 set /a a2=%type%
  if %p1num3% == 3 set /a a3=%type%
  if %p1num3% == 4 set /a a4=%type%
  if %p1num3% == 5 set /a a5=%type%
  if %p1num3% == 6 set /a a6=%type%
  if %p1num3% == 7 set /a a7=%type%
  if %p1num3% == 8 set /a a8=%type%
)
if %p1num4% == b (
  if %p1num3% == 1 set /a b1=%type%
  if %p1num3% == 2 set /a b2=%type%
  if %p1num3% == 3 set /a b3=%type%
  if %p1num3% == 4 set /a b4=%type%
  if %p1num3% == 5 set /a b5=%type%
  if %p1num3% == 6 set /a b6=%type%
  if %p1num3% == 7 set /a b7=%type%
  if %p1num3% == 8 set /a b8=%type%
)
)
if %p1num4% == c (
  if %p1num3% == 1 set /a c1=%type%
  if %p1num3% == 2 set /a c2=%type%
  if %p1num3% == 3 set /a c3=%type%
  if %p1num3% == 4 set /a c4=%type%
  if %p1num3% == 5 set /a c5=%type%
  if %p1num3% == 6 set /a c6=%type%
  if %p1num3% == 7 set /a c7=%type%
  if %p1num3% == 8 set /a c8=%type%
)
if %p1num4% == d (
  if %p1num3% == 1 set /a d1=%type%
  if %p1num3% == 2 set /a d2=%type%
  if %p1num3% == 3 set /a d3=%type%
  if %p1num3% == 4 set /a d4=%type%
  if %p1num3% == 5 set /a d5=%type%
  if %p1num3% == 6 set /a d6=%type%
  if %p1num3% == 7 set /a d7=%type%
  if %p1num3% == 8 set /a d8=%type%
)
)
if %p1num4% == e (
  if %p1num3% == 1 set /a e1=%type%
  if %p1num3% == 2 set /a e2=%type%
  if %p1num3% == 3 set /a e3=%type%
  if %p1num3% == 4 set /a e4=%type%
  if %p1num3% == 5 set /a e5=%type%
  if %p1num3% == 6 set /a e6=%type%
  if %p1num3% == 7 set /a e7=%type%
  if %p1num3% == 8 set /a e8=%type%
)
if %p1num4% == f (
  if %p1num3% == 1 set /a f1=%type%
  if %p1num3% == 2 set /a f2=%type%
  if %p1num3% == 3 set /a f3=%type%
  if %p1num3% == 4 set /a f4=%type%
  if %p1num3% == 5 set /a f5=%type%
  if %p1num3% == 6 set /a f6=%type%
  if %p1num3% == 7 set /a f7=%type%
  if %p1num3% == 8 set /a f8=%type%
)
)
if %p1num4% == g (
  if %p1num3% == 1 set /a g1=%type%
  if %p1num3% == 2 set /a g2=%type%
  if %p1num3% == 3 set /a g3=%type%
  if %p1num3% == 4 set /a g4=%type%
  if %p1num3% == 5 set /a g5=%type%
  if %p1num3% == 6 set /a g6=%type%
  if %p1num3% == 7 set /a g7=%type%
  if %p1num3% == 8 set /a g8=%type%
)
if %p1num4% == h (
  if %p1num3% == 1 set /a h1=%type%
  if %p1num3% == 2 set /a h2=%type%
  if %p1num3% == 3 set /a h3=%type%
  if %p1num3% == 4 set /a h4=%type%
  if %p1num3% == 5 set /a h5=%type%
  if %p1num3% == 6 set /a h6=%type%
  if %p1num3% == 7 set /a h7=%type%
  if %p1num3% == 8 set /a h8=%type%
)


echo %type%
cls
echo    1   2   3   4   5   6   7   8
echo  A[%a1%] [%a2%] [%a3%] [%a4%] [%a5%] [%a6%] [%a7%] [%a8%]
echo  B[%b1%] [%b2%] [%b3%] [%b4%] [%b5%] [%b6%] [%b7%] [%b8%]
echo  C[%c1%] [%c2%] [%c3%] [%c4%] [%c5%] [%c6%] [%c7%] [%c8%]
echo  D[%d1%] [%d2%] [%d3%] [%d4%] [%d5%] [%d6%] [%d7%] [%d8%]
echo  E[%e1%] [%e2%] [%e3%] [%e4%] [%e5%] [%e6%] [%e7%] [%e8%]
echo  F[%f1%] [%f2%] [%f3%] [%f4%] [%f5%] [%f6%] [%f7%] [%f8%]
echo  G[%g1%] [%g2%] [%g3%] [%g4%] [%g5%] [%g6%] [%g7%] [%g8%]
echo  H[%h1%] [%h2%] [%h3%] [%h4%] [%h5%] [%h6%] [%h7%] [%h8%]
echo Press a key so that player 2 can take their turn!!!
pause >nul
cls
title Game-Chess: Player2's Turn!
echo    1   2   3   4   5   6   7   8
echo  A[%a1%] [%a2%] [%a3%] [%a4%] [%a5%] [%a6%] [%a7%] [%a8%]
echo  B[%b1%] [%b2%] [%b3%] [%b4%] [%b5%] [%b6%] [%b7%] [%b8%]
echo  C[%c1%] [%c2%] [%c3%] [%c4%] [%c5%] [%c6%] [%c7%] [%c8%]
echo  D[%d1%] [%d2%] [%d3%] [%d4%] [%d5%] [%d6%] [%d7%] [%d8%]
echo  E[%e1%] [%e2%] [%e3%] [%e4%] [%e5%] [%e6%] [%e7%] [%e8%]
echo  F[%f1%] [%f2%] [%f3%] [%f4%] [%f5%] [%f6%] [%f7%] [%f8%]
echo  G[%g1%] [%g2%] [%g3%] [%g4%] [%g5%] [%g6%] [%g7%] [%g8%]
echo  H[%h1%] [%h2%] [%h3%] [%h4%] [%h5%] [%h6%] [%h7%] [%h8%]
echo.
echo Player2-Your Turn!
echo Press a key to input first square!
pause >nul
cls
echo    1   2   3   4   5   6   7   8
echo  A[%a1%] [%a2%] [%a3%] [%a4%] [%a5%] [%a6%] [%a7%] [%a8%]
echo  B[%b1%] [%b2%] [%b3%] [%b4%] [%b5%] [%b6%] [%b7%] [%b8%]
echo  C[%c1%] [%c2%] [%c3%] [%c4%] [%c5%] [%c6%] [%c7%] [%c8%]
echo  D[%d1%] [%d2%] [%d3%] [%d4%] [%d5%] [%d6%] [%d7%] [%d8%]
echo  E[%e1%] [%e2%] [%e3%] [%e4%] [%e5%] [%e6%] [%e7%] [%e8%]
echo  F[%f1%] [%f2%] [%f3%] [%f4%] [%f5%] [%f6%] [%f7%] [%f8%]
echo  G[%g1%] [%g2%] [%g3%] [%g4%] [%g5%] [%g6%] [%g7%] [%g8%]
echo  H[%h1%] [%h2%] [%h3%] [%h4%] [%h5%] [%h6%] [%h7%] [%h8%]
echo.
echo Input number!
echo ?

set /p p1num1=

if %p1num1% == checkmate (
  set /a winner=1
  goto win
)
if %p1num1% == menu (
  goto menu
)


echo Input letter!
echo ?

set /p p1num2=

echo Input second number!
echo ?

set /p p1num3=


echo Input second letter!
echo ?

set /p p1num4=


echo Okay!
echo Now wait a second for the board to come up...

if %p1num2% == a (
  if %p1num1% == 1 (
    set /a type=%a1%
    set /a a1=0
  )
  if %p1num1% == 2 (
    set /a type=%a2%
    set /a a2=0
  )
  if %p1num1% == 3 (
    set /a type=%a3%
    set /a a3=0
  )
  if %p1num1% == 4 (
    set /a type=%a4%
    set /a a4=0
  )
  if %p1num1% == 5 (
    set /a type=%a5%
    set /a a5=0
  )
  if %p1num1% == 6 (
    set /a type=%a6%
    set /a a6=0
  )
  if %p1num1% == 7 (
    set /a type=%a7%
    set /a a7=0
  )
  if %p1num1% == 8 (
    set /a type=%a8%
    set /a a8=0
  )
)
if %p1num2% == b (
  if %p1num1% == 1 (
    set /a type=%b1%
    set /a b1=0
  )
  if %p1num1% == 2 (
    set /a type=%b2%
    set /a b2=0
  )
  if %p1num1% == 3 (
    set /a type=%b3%
    set /a b3=0
  )
  if %p1num1% == 4 (
    set /a type=%b4%
    set /a b4=0
  )
  if %p1num1% == 5 (
    set /a type=%b5%
    set /a b5=0
  )
  if %p1num1% == 6 (
    set /a type=%b6%
    set /a b6=0
  )
  if %p1num1% == 7 (
    set /a type=%b7%
    set /a b7=0
  )
  if %p1num1% == 8 (
    set /a type=%b8%
    set /a b8=0
  )
)
if %p1num2% == c (
  if %p1num1% == 1 (
    set /a type=%c1%
    set /a c1=0
  )
  if %p1num1% == 2 (
    set /a type=%c2%
    set /a c2=0
  )
  if %p1num1% == 3 (
    set /a type=%c3%
    set /a c3=0
  )
  if %p1num1% == 4 (
    set /a type=%c4%
    set /a c4=0
  )
  if %p1num1% == 5 (
    set /a type=%c5%
    set /a c5=0
  )
  if %p1num1% == 6 (
    set /a type=%c6%
    set /a c6=0
  )
  if %p1num1% == 7 (
    set /a type=%c7%
    set /a c7=0
  )
  if %p1num1% == 8 (
    set /a type=%c8%
    set /a c8=0
  )
)
if %p1num2% == d (
  if %p1num1% == 1 (
    set /a type=%d1%
    set /a d1=0
  )
  if %p1num1% == 2 (
    set /a type=%d2%
    set /a d2=0
  )
  if %p1num1% == 3 (
    set /a type=%d3%
    set /a d3=0
  )
  if %p1num1% == 4 (
    set /a type=%d4%
    set /a d4=0
  )
  if %p1num1% == 5 (
    set /a type=%d5%
    set /a d5=0
  )
  if %p1num1% == 6 (
    set /a type=%d6%
    set /a d6=0
  )
  if %p1num1% == 7 (
    set /a type=%d7%
    set /a d7=0
  )
  if %p1num1% == 8 (
    set /a type=%d8%
    set /a d8=0
  )
)
if %p1num2% == e (
  if %p1num1% == 1 (
    set /a type=%e1%
    set /a e1=0
  )
  if %p1num1% == 2 (
    set /a type=%e2%
    set /a e2=0
  )
  if %p1num1% == 3 (
    set /a type=%e3%
    set /a e3=0
  )
  if %p1num1% == 4 (
    set /a type=%e4%
    set /a e4=0
  )
  if %p1num1% == 5 (
    set /a type=%e5%
    set /a e5=0
  )
  if %p1num1% == 6 (
    set /a type=%e6%
    set /a e6=0
  )
  if %p1num1% == 7 (
    set /a type=%e7%
    set /a e7=0
  )
  if %p1num1% == 8 (
    set /a type=%e8%
    set /a e8=0
  )
)
if %p1num2% == f (
  if %p1num1% == 1 (
    set /a type=%f1%
    set /a f1=0
  )
  if %p1num1% == 2 (
    set /a type=%f2%
    set /a f2=0
  )
  if %p1num1% == 3 (
    set /a type=%f3%
    set /a f3=0
  )
  if %p1num1% == 4 (
    set /a type=%f4%
    set /a f4=0
  )
  if %p1num1% == 5 (
    set /a type=%f5%
    set /a f5=0
  )
  if %p1num1% == 6 (
    set /a type=%f6%
    set /a f6=0
  )
  if %p1num1% == 7 (
    set /a type=%f7%
    set /a f7=0
  )
  if %p1num1% == 8 (
    set /a type=%f8%
    set /a f8=0
  )
)
if %p1num2% == g (
  if %p1num1% == 1 (
    set /a type=%g1%
    set /a g1=0
  )
  if %p1num1% == 2 (
    set /a type=%g2%
    set /a g2=0
  )
  if %p1num1% == 3 (
    set /a type=%g3%
    set /a g3=0
  )
  if %p1num1% == 4 (
    set /a type=%g4%
    set /a g4=0
  )
  if %p1num1% == 5 (
    set /a type=%g5%
    set /a g5=0
  )
  if %p1num1% == 6 (
    set /a type=%g6%
    set /a g6=0
  )
  if %p1num1% == 7 (
    set /a type=%g7%
    set /a g7=0
  )
  if %p1num1% == 8 (
    set /a type=%g8%
    set /a g8=0
  )
)
if %p1num2% == h (
  if %p1num1% == 1 (
    set /a type=%h1%
    set /a h1=0
  )
  if %p1num1% == 2 (
    set /a type=%h2%
    set /a h2=0
  )
  if %p1num1% == 3 (
    set /a type=%h3%
    set /a h3=0
  )
  if %p1num1% == 4 (
    set /a type=%h4%
    set /a h4=0
  )
  if %p1num1% == 5 (
    set /a type=%h5%
    set /a h5=0
  )
  if %p1num1% == 6 (
    set /a type=%h6%
    set /a h6=0
  )
  if %p1num1% == 7 (
    set /a type=%h7%
    set /a h7=0
  )
  if %p1num1% == 8 (
    set /a type=%h8%
    set /a h8=0
  )
)
if %p1num4% == a (
  if %p1num3% == 1 set /a a1=%type%
  if %p1num3% == 2 set /a a2=%type%
  if %p1num3% == 3 set /a a3=%type%
  if %p1num3% == 4 set /a a4=%type%
  if %p1num3% == 5 set /a a5=%type%
  if %p1num3% == 6 set /a a6=%type%
  if %p1num3% == 7 set /a a7=%type%
  if %p1num3% == 8 set /a a8=%type%
)
if %p1num4% == b (
  if %p1num3% == 1 set /a b1=%type%
  if %p1num3% == 2 set /a b2=%type%
  if %p1num3% == 3 set /a b3=%type%
  if %p1num3% == 4 set /a b4=%type%
  if %p1num3% == 5 set /a b5=%type%
  if %p1num3% == 6 set /a b6=%type%
  if %p1num3% == 7 set /a b7=%type%
  if %p1num3% == 8 set /a b8=%type%
)
)
if %p1num4% == c (
  if %p1num3% == 1 set /a c1=%type%
  if %p1num3% == 2 set /a c2=%type%
  if %p1num3% == 3 set /a c3=%type%
  if %p1num3% == 4 set /a c4=%type%
  if %p1num3% == 5 set /a c5=%type%
  if %p1num3% == 6 set /a c6=%type%
  if %p1num3% == 7 set /a c7=%type%
  if %p1num3% == 8 set /a c8=%type%
)
if %p1num4% == d (
  if %p1num3% == 1 set /a d1=%type%
  if %p1num3% == 2 set /a d2=%type%
  if %p1num3% == 3 set /a d3=%type%
  if %p1num3% == 4 set /a d4=%type%
  if %p1num3% == 5 set /a d5=%type%
  if %p1num3% == 6 set /a d6=%type%
  if %p1num3% == 7 set /a d7=%type%
  if %p1num3% == 8 set /a d8=%type%
)
)
if %p1num4% == e (
  if %p1num3% == 1 set /a e1=%type%
  if %p1num3% == 2 set /a e2=%type%
  if %p1num3% == 3 set /a e3=%type%
  if %p1num3% == 4 set /a e4=%type%
  if %p1num3% == 5 set /a e5=%type%
  if %p1num3% == 6 set /a e6=%type%
  if %p1num3% == 7 set /a e7=%type%
  if %p1num3% == 8 set /a e8=%type%
)
if %p1num4% == f (
  if %p1num3% == 1 set /a f1=%type%
  if %p1num3% == 2 set /a f2=%type%
  if %p1num3% == 3 set /a f3=%type%
  if %p1num3% == 4 set /a f4=%type%
  if %p1num3% == 5 set /a f5=%type%
  if %p1num3% == 6 set /a f6=%type%
  if %p1num3% == 7 set /a f7=%type%
  if %p1num3% == 8 set /a f8=%type%
)
)
if %p1num4% == g (
  if %p1num3% == 1 set /a g1=%type%
  if %p1num3% == 2 set /a g2=%type%
  if %p1num3% == 3 set /a g3=%type%
  if %p1num3% == 4 set /a g4=%type%
  if %p1num3% == 5 set /a g5=%type%
  if %p1num3% == 6 set /a g6=%type%
  if %p1num3% == 7 set /a g7=%type%
  if %p1num3% == 8 set /a g8=%type%
)
if %p1num4% == h (
  if %p1num3% == 1 set /a h1=%type%
  if %p1num3% == 2 set /a h2=%type%
  if %p1num3% == 3 set /a h3=%type%
  if %p1num3% == 4 set /a h4=%type%
  if %p1num3% == 5 set /a h5=%type%
  if %p1num3% == 6 set /a h6=%type%
  if %p1num3% == 7 set /a h7=%type%
  if %p1num3% == 8 set /a h8=%type%
)


echo %type%
cls
echo    1   2   3   4   5   6   7   8
echo  A[%a1%] [%a2%] [%a3%] [%a4%] [%a5%] [%a6%] [%a7%] [%a8%]
echo  B[%b1%] [%b2%] [%b3%] [%b4%] [%b5%] [%b6%] [%b7%] [%b8%]
echo  C[%c1%] [%c2%] [%c3%] [%c4%] [%c5%] [%c6%] [%c7%] [%c8%]
echo  D[%d1%] [%d2%] [%d3%] [%d4%] [%d5%] [%d6%] [%d7%] [%d8%]
echo  E[%e1%] [%e2%] [%e3%] [%e4%] [%e5%] [%e6%] [%e7%] [%e8%]
echo  F[%f1%] [%f2%] [%f3%] [%f4%] [%f5%] [%f6%] [%f7%] [%f8%]
echo  G[%g1%] [%g2%] [%g3%] [%g4%] [%g5%] [%g6%] [%g7%] [%g8%]
echo  H[%h1%] [%h2%] [%h3%] [%h4%] [%h5%] [%h6%] [%h7%] [%h8%]
echo Press a key so Jordan can take his turn!!!
goto input

exit
:win
if %winner% == 1 title Game-Chess: Jordan Beat Guest!
if %winner% == 2 title Game-Chess: Guest Beat Jordan!
cls
echo ==================================
echo Congratulations, Player%winner%!
if %winner% == 1 echo You beat Guest!
if %winner% == 2 echo You beat Jordan!
echo ==================================
echo Press any key to return to the menu.
pause >nul
goto menu

exit
:credits
title Credits
cls
echo ======================================================
echo Almost all programming/artwork by Jason, Edited by JZ!
echo This game was made completely in command prompt!
echo ======================================================
echo.
echo Press any key to return to the menu.
pause >nul
goto menu

exit
:Version No.
title Version No.
cls
echo =========================================================================
echo Chess V.1.4.1
echo If you have any ideas, to make this game better, tell Jordan Immediately.
echo OR you could tell Jason Immediately.
echo =========================================================================
echo.
echo Press any key to return to the menu.
pause >nul
goto menu

exit
:other
title other
cls
echo This is nothing yet, sorry.
echo.
echo Press any key to return to the menu.
pause >nul
goto menu