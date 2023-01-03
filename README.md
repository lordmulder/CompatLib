Introduction
============

CompatLib &ndash; compatibility library for re-establishing Windows XP (SP-3) support in VS2019 and VS2022.

C/C++ executables built with VS2019 (Toolset v142) or VS2022 (Toolset v143) do **not** normally run on Windows XP. That is because the executables created by VS2019 (Toolset v142) or VS2022 (Toolset v143) depend on certain functions in the `KERNEL32.DLL` system library that simply did **not** exist in Windows XP yet. Consequently, on the Windows XP system, those executable fail to start with an error message about the missing entry point!

CompatLib provides a workaround for the problem, by eliminating the "problematic" `KERNEL32.DLL` dependencies from the executable, so that the executable will again be able to run on Windows XP. This is achieved by substituting the call to the original (missing) function in `KERNEL32.DLL` with a small "shim" function. The "shim" function is linked directly into the executable file. Also, the "shim" function tries to emulate the call, by forwarding the call to an adequate function in `KERNEL32.DLL` that *does* exist on Windows XP. There currently are *two* such function dependencies that must be substituted by CompatLib &ndash; `InitializeCriticalSectionEx()` and `LCMapStringEx()`.


### Remarks

* Even with CompatLib, it still *is* necessary to install "Service Pack 3" for Windows XP on the target system

* Running x64 (64-Bit) executables is possible, but requires the *Windows XP Professional x64 Edition*

* If your *application code* uses Win32 API functions unavailable in Windows XP, then CompatLib will **not** help!  
  CompatLib **only** removes the "problematic" dependencies induced by Microsoft's C/C++ Runtime.


Usage
=====

In order to build an executable that will run on Windows XP with VS2019 (Toolset v142) or VS2022 (Toolset v143), the following settings are required in your Visual Studio C/C++ project:

1. ***Code Generation / Runtime Library*** must be set to `Multi-threaded (/MT)` &#10143; *static* linking is necessary!

2. ***System / Minimum Required Version*** must be forced to `5.1` (x86) or `5.2` (x64)

3. Finally, the matching variant of `libcompat.lib` must be added to ***Input / Additional Dependencies***


License
=======

This work has been released under the **CC0 1.0 Universal** license.

For details, please refer to:  
<https://creativecommons.org/publicdomain/zero/1.0/legalcode>


&marker;
