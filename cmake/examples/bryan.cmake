# configure file for bryan test case

macro(SET_IF_EMPTY _variable)
  if("${${_variable}}" STREQUAL "")
    set(${_variable} ${ARGN})
  endif()
endmacro()

# athena variables
set_if_empty(NUMBER_GHOST_CELLS 3)

# canoe configure
set(NVAPOR 1)
set(NCLOUD 1)
set(NPHASE_LEGACY 2)
set(NETCDF OFF)
set(PNETCDF ON)
set(MPI ON)
# set(RSOLVER lmars)
set(RSOLVER hllc_transform)
