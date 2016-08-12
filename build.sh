# 
# An example script to download and build programs.
# 


#git_repository=https://github.com/SimTools

#for package in lcbase Leda lclib jsf physsim ; do 
#  echo "git-cloning ${package}"
#  git clone ${git_repository}/${package}

#done

(
  cd lcbase/bin
  if [ ! -e config.in ] ; then 
    cp -v config.in-orig config.in 
  fi
)

exit

# Setup environment
. HowTo/setup.sh 

# make lcbase
( cd ${LCBASEDIR} && make )

# make Leda
( cd ${LEDAROOT} && make ) 

# make lclib
( cd ${LCLIBROOT} && ./configure && make install ) 

# make jsf
( cd ${JSFROOT} && make install ) 

# make physsim
( cd ${KFLIBROOT} && make ) 


