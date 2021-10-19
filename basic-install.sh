#!/usr/bin/env bash
# shellcheck disable=SC1090

# WhosAtHome: An Unoffical PiHole plugin for home automation
#
# Installs and Updates WhosAtHome
#

# -e option instructs bash to immediately exit if any command
set -e

# Append common folders to the PATH to ensure that all basic commands are available.
export PATH+=':/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'

######## VARIABLES #########

# Location for log storage
installLogLoc=/etc/WhosAtHome/install.log

# Clone (or update) git repos during the install.
WhosAtHome="https://github.com/BertieSlartibartfast/whosathome.git"

# Give settings their default values.
QUERY_LOGGING=true

if [ -z "${USER}" ]; then
  USER="$(id -un)"
fi
