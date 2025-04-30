#!/usr/bin/env bash

set -e


################################################################################
### Head: openbox
##

openbox_config_run_pre () {

	openbox_service_stop


	return 0

}

openbox_config_run_post () {

	openbox_service_start


	return 0

}

openbox_service_stop () {

	#openbox_service_stop_openbox_globalkeysd

	#openbox_service_stop_openbox_panel

	#openbox_service_stop_pcmanfm_qt

	openbox_service_stop_pcmanfm

	openbox_service_stop_xfconfd

	openbox_service_stop_xfsettingsd


	return 0

}

openbox_service_stop_openbox_globalkeysd () {

	if killall -9 openbox-globalkeysd; then
		return 0
	fi


	return 0

}

openbox_service_stop_openbox_panel () {

	if killall -9 openbox-panel; then
		return 0
	fi


	return 0

}

openbox_service_stop_pcmanfm () {

	if killall -9 pcmanfm; then
		return 0
	fi


	return 0

}

openbox_service_stop_pcmanfm_qt () {

	if killall -9 pcmanfm-qt; then
		return 0
	fi


	return 0

}

openbox_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

openbox_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

openbox_service_start () {


	return 0

}

openbox_config_install () {

	echo
	echo "##"
	echo "## Config: openbox"
	echo "##"
	echo


	openbox_config_install_by_dir


	echo

}

openbox_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: openbox
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	openbox_config_run_pre

	openbox_config_install

	openbox_config_run_post

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
