/******************************************************************************/
/* CompatLib for Windows XP, by LoRd_MuldeR <MuldeR2@GMX.de>                  */
/* This work has been released under the CC0 1.0 Universal license!           */
/******************************************************************************/

#include <iostream>

#ifdef _M_X64
#  define ARCH_TYPE "x64"
#else
#  define ARCH_TYPE "x86"
#endif

int main()
{
    std::cout << "Hello World! [MSVC v" << _MSC_VER << "] [" << ARCH_TYPE << "]\n" << std::endl;
}
