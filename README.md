Introduction
============

CompatLib &ndash; compatibility library for re-establishing Windows XP SP-3 support in VS2019 (and later).

Executables built with VS2019 (Toolset v142) do **not** normally run on Windows XP SP-3. That is because the executables created by VS2019 (Toolset v142) depend on certain functions in `KERNEL32.DLL` that simply did **not** exist in Windows XP SP-3 yet. Consequently, the executable will fail to start with an error message about the missing entry point! CompatLib provides a workaround for the problem, by eliminating the "problematic" `KERNEL32.DLL` dependencies from the executable, so that the executable will again be able to run on Windows XP SP-3. This is achieved by substituting the call to the original (missing) function in `KERNEL32.DLL` with a small "shim" function that is linked directly into the executable. The "shim" function will forward the call to an adequate function in `KERNEL32.DLL` that *does* exist on Windows XP SP-3. In fact, there currently are *two* such function dependencies that must be substituted by CompatLib, i.e. `InitializeCriticalSectionEx()` and `LCMapStringEx()`.

**Note:** It still is necessary to install "Service Pack 3" for Windows XP &#128527;


Usage
=====

In order to build an executable that will run on Windows XP SP-3, the following project settings are required:

1. The ***runtime library*** must be set to `Multi-threaded (/MT)` &ndash; *static* linking is necessary

2. The ***minimum required version*** must be set to `5.1` (32-Bit) or `5.2` (64-Bit)

3. The matching variant of `libcompat.lib` must be added to the ***additional dependencies***


License
=======

This work has been released under the **CC0 1.0 Universal** license.

For details, please refer to:  
<https://creativecommons.org/publicdomain/zero/1.0/legalcode>


&marker;
