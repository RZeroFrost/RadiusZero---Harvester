#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <Constants.au3>
#include-once

Func MakeGui($Script, $Status, $runs)
   #Region ### START Koda GUI section ### Form=
   $Form1 = GUICreate("SCD3 Version 1.002A", 355, 140, 130, 30, BitOr($WS_POPUP,$WS_DLGFRAME),$WS_EX_TOOLWINDOW)
   GUISetBkColor(0x99B4D1)
   $Label1 = GUICtrlCreateLabel("RADIUSZERO", 8, 8, 92, 25)
   GUICtrlSetFont(-1, 12, 400, 0, "Franklin Gothic Medium")
   $Label2 = GUICtrlCreateLabel("Current Status:", 8, 72, 74, 17)
   $gplabel = GUICtrlCreateLabel("Current Gold:", 8, 102, 74, 17)
   Global $Stat_L = GUICtrlCreateLabel($Status, 100, 72, 100, 17)
   Global $Stat_Gold = GUICtrlCreateLabel("N/A", 100, 102, 100, 17)
   $Label3 = GUICtrlCreateLabel("Active Script:", 8, 48, 67, 17)
   GLobal $Script_L = GUICtrlCreateLabel($Script, 100, 48, 67, 17)
   $Label4 = GUICtrlCreateLabel("Version 1.002A", 272, 72, 76, 17)
   $Label5 = GUICtrlCreateLabel("Runs:", 272, 48, 32, 17)
   Global $Runs_L = GUICtrlCreateLabel($runs, 320, 48, 320, 17)
   GUISetState()
   WinSetTrans($Form1, "", 210)
   GUICtrlSetColor($Stat_L, $COLOR_GREEN)
   GUICtrlSetColor($Script_L, $COLOR_YELLOW)
   GUICtrlSetFont($Stat_L, 9, 700,4)
   GUICtrlSetFont($Runs_L, 9, 700,4)
   GUICtrlSetFont($Stat_Gold, 9, 700,4)
   #EndRegion ### END Koda GUI section ###

   ;.. SET ONTOP OF STUFF
   $hwnd = WinGetHandle("SCD3 Version 1.002A")
   WinSetOnTop($hWnd, "", $WINDOWS_ONTOP)
EndFunc