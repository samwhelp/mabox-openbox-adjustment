#!/usr/bin/env bash


################################################################################
### Head: Note
##

##
## ## Link
##
## * https://github.com/samwhelp/skel-project-plan/blob/master/develop/sh/project-helper/basic/helper/bin/prepare.sh
##

##
### Tail: Note
################################################################################


################################################################################
### Head: Bash
##

set -e						## exit on error
set -o pipefail				## exit on pipeline error
set -u						## treat unset variable as error

##
### Tail: Bash
################################################################################


################################################################################
### Head: Init
##

REF_CMD_FILE_NAME="$(basename "${0}")"
REF_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
#REF_INIT_DIR_PATH="${REF_BASE_DIR_PATH}/../ext"
#. "${REF_INIT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / mod_sync
##

mod_sync () {

	local work_dir_path="$(realpath "${REF_BASE_DIR_PATH}/../share/gen/openbox-gen-rc")"

	make -C ${work_dir_path} sync

}

##
### Tail: Model / mod_sync
################################################################################


################################################################################
### Head: Portal / portal_sync
##

portal_sync () {

	mod_sync

}

##
### Tail: Portal / portal_sync
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_sync "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
