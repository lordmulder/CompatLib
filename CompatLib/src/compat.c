/******************************************************************************/
/* CompatLib for Windows XP, by LoRd_MuldeR <MuldeR2@GMX.de>                  */
/* This work has been released under the CC0 1.0 Universal license!           */
/******************************************************************************/

#define WIN32_LEAN_AND_MEAN 1
#include <Windows.h>

BOOL WINAPI XPCompatLib_InitializeCriticalSectionEx(LPCRITICAL_SECTION lpCriticalSection, DWORD dwSpinCount, DWORD Flags)
{
	return InitializeCriticalSectionAndSpinCount(lpCriticalSection, dwSpinCount);
}

int WINAPI XPCompatLib_LCMapStringEx(LPCWSTR lpLocaleName, DWORD dwMapFlags, LPCWSTR lpSrcStr, int cchSrc, LPWSTR lpDestStr, int cchDest, LPNLSVERSIONINFO lpVersionInformation, LPVOID lpReserved, LPARAM sortHandle)
{
	return LCMapStringW(LOCALE_SYSTEM_DEFAULT, dwMapFlags, lpSrcStr, cchSrc, lpDestStr, cchDest);
}
