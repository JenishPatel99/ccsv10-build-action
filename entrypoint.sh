#!/bin/bash

# Import project
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.location /github/workspace/
# compile all imported projects
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectBuild -ccs.workspace -ccs.autoImport -ccs.listErrors

retcode=$?

if [[ $retcode == 0 ]]
then
	exit 0
else
	exit 1
fi