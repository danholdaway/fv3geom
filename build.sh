#!/bin/sh

rm *.mod *.a *.o

gfortran -c fv3geom_constants_mod.f90
gfortran -c	fv3geom_utils_mod.F90
gfortran -c	fv3geom_gnomonicgrids_mod.f90
gfortran -c	fv3geom_create_grid.f90

ar crv geom.a fv3geom_utils_mod.o fv3geom_gnomonicgrids_mod.o fv3geom_create_grid.o

gfortran driver.f90 geom.a -o geom.x

rm *.mod *.o
