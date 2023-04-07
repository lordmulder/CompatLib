; ****************************************************************************
; CompatLib for Windows XP, by LoRd_MuldeR <MuldeR2@GMX.de>                  *
; This work has been released under the CC0 1.0 Universal license!           *
; ****************************************************************************

.data

__imp_CompareStringEx dq __acrt_CompareStringEx
__imp_GetLocaleInfoEx dq __acrt_GetLocaleInfoEx
__imp_InitializeCriticalSectionEx dq __acrt_InitializeCriticalSectionEx
__imp_LCMapStringEx dq __acrt_LCMapStringEx

externdef __imp_CompareStringEx : QWORD
externdef __imp_GetLocaleInfoEx : QWORD
externdef __imp_InitializeCriticalSectionEx : QWORD
externdef __imp_LCMapStringEx : QWORD

extern __acrt_CompareStringEx : proc
extern __acrt_GetLocaleInfoEx : proc
extern __acrt_InitializeCriticalSectionEx : proc
extern __acrt_LCMapStringEx : proc

end
