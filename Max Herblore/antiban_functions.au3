;
;Harvester - Antiban Methods
;Frost @ RadiusZero v0.01A
;
#include <base_functions.au3>

$x_pott = 1699
$y_pott = 701
Func check_out()
   _ConvertXY($x_pott, $y_pott)
   $pixels = PixelSearch($x_pott, $y_pott, $x_pott, $y_pott,0x061820,1)			;Scan 1st inventory slot pixel.
   if NOT(@error) Then
	  MsgBox(0x30, "RadiusZero - Antiban", "We have run out of ingredients, STOPPING.")
	  exit 1
   EndIf
EndFunc

;More Coming Soon.