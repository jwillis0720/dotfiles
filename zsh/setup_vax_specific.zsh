export $(dbus-launch)

#MSL
export MSL_EXTERNAL_LIB_DIR=/dnas/home/jwillis/schief_scripts/msl/extlib_libs
export MSL_EXTERNAL_INCLUDE_DIR=/dnas/home/jwillis/schief_scripts/msl/extlib_incs

#SETUPMATLABCOMPILER
MCRROOT=/usr/local/MATLAB/MATLAB_Compiler_Runtime/v713
MCRJRE=${MCRROOT}/sys/java/jre/glnxa64/jre/lib/amd64 ;
XAPPLRESDIR=${MCRROOT}/X11/app-defaults ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:.:${MCRROOT}/runtime/glnxa64 ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/bin/glnxa64 ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/sys/os/glnxa64;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/native_threads ; 
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/server ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/client ;
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE} ;  
export XAPPLRESDIR;

#ADD OPENMPI LINKING PATH
export LD_LIBRARY_PATH=/dnas/apps/openmpi/lib/:$LD_LIBRARY_PATH

#ADD ANACONDA LIBRARY PATH
export LIBRARY_PATH=/dnas/apps/anaconda/lib/:$LIBRARY_PATH

#Custom PYTHON PATH
export PYTHONPATH="$PYTHONPATH:/dnas/home/jwillis/python_lib/"

#And finally PATH
export PATH="/dnas/apps/anaconda/bin/:/dnas/apps/scripts:/dnas/apps/bin:/dnas/home/jwillis/repos/sratoolkit/bin:/dnas/apps/slurm/startup:$PATH"
