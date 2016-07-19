;
;#Harvester-HerbloreMax
;Frost @ RadiusZero v0.03A
;
#include <gui_functions.au3>
#include <antiban_functions.au3>

HotKeySet("{F4}", "quit")
$x_pot = 1713
$y_pot = 699
$x_ing = 1715
$y_ing = 806
$x_bank = 866
$y_bank = 489
$runs = 0

Func clean_herb()
   GUICtrlSetData($Stat_L, "MAKING POTION")
    _ConvertXY($x_pot, $y_pot)					;Convert for universal resolution.
   MouseClick("left", $x_pot, $y_pot, 1, 1)
   sleep(800)
    _ConvertXY($x_ing, $y_ing)					;Convert for universal resolution.
   MouseClick("left", $x_ing, $y_ing, 1, 1)
   sleep(1500)
   Send("{SPACE down}")
   sleep(1000)
   Send("{SPACE up}")
   sleep(15000)
EndFunc

Func bank()
   GUICtrlSetData($Stat_L, "BANKING HERB")
   sleep(1000)
   _ConvertXY($x_bank, $y_bank)					;Convert for universal resolution.
   MouseClick("left", $x_bank, $y_bank,1 , 1)
   sleep(1200)
   Send("{3 down}")
   sleep(800)
   Send("{3 up}")
   sleep(1500)
   Send("{2 down}")
   sleep(800)
   Send("{2 up}")
   sleep(1000)
EndFunc

Func quit()
   exit 1
EndFunc


while 1
	  GUICtrlSetData($Script_L, "Max Herblore")
	  sleep(1000)
	  bank()
	  clean_herb()
	  $runs = $runs + 1
	  GUICtrlSetData($Runs_L, $runs)
	  ;TRACK VIA INVENTORY SPACE PIXEL WHETHER WE HAVE RUN OUT OF POTIONS TO WITHDRAW. THEN PUT OUT A MESSAGE BOX THAT WE'RE OUT AS AN ANTIBAN.
	  check_out()
WEnd