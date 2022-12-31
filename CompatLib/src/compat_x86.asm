; ****************************************************************************
; CompatLib for Windows XP, by LoRd_MuldeR <MuldeR2@GMX.de>                  *
; This work has been released under the CC0 1.0 Universal license!           *
; ****************************************************************************

.model flat

.data

__imp__InitializeCriticalSectionEx@12 dd _XPCompatLib_InitializeCriticalSectionEx@12
__imp__LCMapStringEx@36 dd _XPCompatLib_LCMapStringEx@36

externdef __imp__InitializeCriticalSectionEx@12 : DWORD
externdef __imp__LCMapStringEx@36 : DWORD

extern _XPCompatLib_InitializeCriticalSectionEx@12 : proc
extern _XPCompatLib_LCMapStringEx@36 : proc

end
