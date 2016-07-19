;
;Harvester - Antiban Methods
;Frost @ RadiusZero v0.01A
;
#include <base_functions.au3>

$x_pot = 1702
$y_pot = 693
Func check_out()
   _ConvertXY($x_pot, $y_pot)
   $pixels = PixelSearch($x_pot-1, $y_pot-1, $x_pot+1, $y_pot+1,0x081A24,20)			;Scan 1st inventory slot pixel.
   if NOT(@error) Then
	  MsgBox(0x30, "RadiusZero - Antiban", "We have run out of ingredients, STOPPING.")
	  exit 1
   EndIf
EndFunc

;More Coming Soon.