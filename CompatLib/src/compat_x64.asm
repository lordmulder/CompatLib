; ****************************************************************************
; CompatLib for Windows XP, by LoRd_MuldeR <MuldeR2@GMX.de>                  *
; This work has been released under the CC0 1.0 Universal license!           *
; ****************************************************************************

.data

__imp_CompareStringEx dq XPCompatLib_CompareStringEx
__imp_GetLocaleInfoEx dq XPCompatLib_GetLocaleInfoEx
__imp_InitializeCriticalSectionEx dq XPCompatLib_InitializeCriticalSectionEx
__imp_LCMapStringEx dq XPCompatLib_LCMapStringEx

externdef __imp_CompareStringEx : QWORD
externdef __imp_GetLocaleInfoEx : QWORD
externdef __imp_InitializeCriticalSectionEx : QWORD
externdef __imp_LCMapStringEx : QWORD

extern XPCompatLib_CompareStringEx : proc
extern XPCompatLib_GetLocaleInfoEx : proc
extern XPCompatLib_InitializeCriticalSectionEx : proc
extern XPCompatLib_LCMapStringEx : proc

end
