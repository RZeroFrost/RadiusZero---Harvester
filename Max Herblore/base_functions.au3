;
;BASE HARVESTER FUNCTIONS
;Frost @ RadiusZero - v0.01A
;

;//FUNCTION -> Converts x/y coordinates on a native 1080p res. reference and adjusts for current resolution.
Func _ConvertXY(ByRef $Xin, ByRef $Yin)
     $Xin = Round( ($Xin / 1920) * @DesktopWidth )
     $Yin = Round( ($Yin / 1080) * @DesktopHeight )
EndFunc
;//END OF CONVERSION
