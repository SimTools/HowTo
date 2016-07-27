##
##  Setup environments to run root/jsf
##  Environment parameter for LC studies
##
#######################################################
##
##  Setup for JLCLOGIN3
##
#######################################################

export LC_RELEASE=
export LC_RELEASE_DIR=/group/ilc/soft/gcc481/SimTools
#
utildir=/group/ilc/soft/gcc481
. ${utildir}/gcc481.setup   # Set up gcc4.8.1 environment

export ROOTSYS=${utildir}/root/5.34.0
# export G4INSTALL=${utildir}/g4/geant4.9.3.p02
export LCIO=${utildir}/lcio/v02-07
export JDK_HOME=${utildir}/java/default
export CERN_ROOT=${utildir}/cernlib/2005

export CLHEP_BASE_DIR=${utildir}/CLHEP/2.1.4.1
export CLHEP_INCLUDE_DIR=$CLHEP_BASE_DIR/include
export STDHEPDIR=${utildir}/stdhep-5-06-01

export LCBASEDIR=$LC_RELEASE_DIR/lcbase
export LEDAROOT=$LC_RELEASE_DIR/Leda
export LCLIBROOT=$LC_RELEASE_DIR/lclib
export JSFROOT=$LC_RELEASE_DIR/jsf
export KFLIBROOT=$LC_RELEASE_DIR/physsim

# export JUPITERROOT=$LC_RELEASE_DIR/Jupiter
# export SATELLITESROOT=$LC_RELEASE_DIR/Satellites
# export URANUSROOT=$LC_RELEASE_DIR/Uranus
export SOSYMLINK=true


##### Geatn4 setup ##############
# . $G4INSTALL/env.sh > /dev/null
######### end of Geant4 setup ##################################

## Set command path
LCPATH=$LCBASEDIR/bin:$JSFROOT/bin:$ROOTSYS/bin:$CERN_ROOT/bin:$LCLIBROOT/bin:$CLHEP_BASE_DIR/bin
LCIOPATH=$LCIO/tools:$LCIO/bin:$JDK_HOME/bin
export PATH=.:~/bin:$LCPATH:$LCIOPATH:$PATH
unset LCPATH
unset LCIOPATH

## Set LD Library Path
export LD_LIBRARY_PATH=$JSFROOT/lib:$ROOTSYS/lib:$LEDAROOT/lib:$CLHEP_BASE_DIR/lib:${LD_LIBRARY_PATH}
export IMAKEINCLUDE="-I$LCBASEDIR -I$KFLIBROOT -I$LCLIBROOT"

