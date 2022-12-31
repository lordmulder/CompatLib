; ****************************************************************************
; CompatLib for Windows XP, by LoRd_MuldeR <MuldeR2@GMX.de>                  *
; This work has been released under the CC0 1.0 Universal license!           *
; ****************************************************************************

.data

__imp_InitializeCriticalSectionEx dq XPCompatLib_InitializeCriticalSectionEx
__imp_LCMapStringEx dq XPCompatLib_LCMapStringEx

externdef __imp_InitializeCriticalSectionEx : QWORD
externdef __imp_LCMapStringEx : QWORD

extern XPCompatLib_InitializeCriticalSectionEx : proc
extern XPCompatLib_LCMapStringEx : proc

end
