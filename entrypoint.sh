#!/bin/bash

ls

# Add repo (project) to ccs-workspace
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.location ex2_obc_software
# compile all imported projects
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectBuild -ccs.workspace -ccs.autoImport -ccs.listErrors

retcode=echo $?

if [ retcode = 0 ]
then
	exit 0
else
	exit 1
fi