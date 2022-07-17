#!/bin/bash

cd ..
ls
echo "Path #1"
pwd

echo "List ex2_obc_software"
ls /home/runner/ex2_obc_software/ex2_obc_software/

echo "List ex2_obc_software #2"
ls /github/workspace/ex2_obc_software

# Add repo (project) to ccs-workspace
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.location /home/runner/work/ex2_obc_software/ex2_obc_software
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.location ex2_obc_software
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.location /github/workspace/ex2_obc_software

cd ..
ls
echo "Path #2"
pwd

echo "List ex2_obc_software"
ls /home/runner/ex2_obc_software/ex2_obc_software/

echo "List ex2_obc_software #2"
ls /github/
ls /github/workspace/ex2_obc_software
ls ~/github/
ls ~/github/workspace/ex2_obc_software

# Add repo (project) to ccs-workspace
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.location /home/runner/work/ex2_obc_software/ex2_obc_software
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.location ex2_obc_software
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.location /github/workspace/ex2_obc_software
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.location /github/workspace/

cd ~/
echo "List main directory"
ls -a

cd /root/
echo "List root dir"
ls -a

ls ~/github/workspace/ex2_obc_software

# compile all imported projects
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectBuild -ccs.workspace -ccs.autoImport -ccs.listErrors

retcode=echo $?

if [ retcode = 0 ]
then
	exit 0
else
	exit 1
fi