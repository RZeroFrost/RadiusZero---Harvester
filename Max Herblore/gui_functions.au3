#include <GUIbot.au3>

sleep(300)
MakeGui("Harvester", "LAUNCHING", 0)
MsgBox(0x30, "RadiusZero", "Launching Harvester, Press F4 to Stop.")
sleep(1000)
GUICtrlSetData($Stat_L, "LAUNCHING 5..")
sleep(1000)
GUICtrlSetData($Stat_L, "LAUNCHING 4..")
sleep(1000)
GUICtrlSetData($Stat_L, "LAUNCHING 3..")
sleep(1000)
GUICtrlSetData($Stat_L, "LAUNCHING 2..")
sleep(1000)
GUICtrlSetData($Stat_L, "LAUNCHING 1..")
sleep(250)
GUICtrlSetData($Stat_L, "BOT WORKING")