include(Compiler/XL)
__compiler_xl(Fortran)

set(CMAKE_Fortran_FORMAT_FIXED_FLAG "-qfixed") # [=<right_margin>]
set(CMAKE_Fortran_FORMAT_FREE_FLAG "-qfree") # [=f90|ibm]

SET(CMAKE_Fortran_MODDIR_FLAG "-qmoddir=")

SET(CMAKE_Fortran_DEFINE_FLAG "-WF,-D")

# -qthreaded     = Ensures that all optimizations will be thread-safe
# -qhalt=e       = Halt on error messages (rather than just severe errors)
SET(CMAKE_Fortran_FLAGS_INIT "-qthreaded -qhalt=e")

# We require updates to CMake C++ code to support preprocessing rules for Fortran.
SET(CMAKE_Fortran_CREATE_PREPROCESSED_SOURCE)
SET(CMAKE_Fortran_CREATE_ASSEMBLY_SOURCE)
