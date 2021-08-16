#!/bin/bash
# shellcheck disable=SC2034

declare UBOOT_SRC_FOLDER="u-boot"
declare KBUILD_OUTPUT="build"
export UBOOT_SRC_FOLDER MAIN_FOLDER KBUILD_OUTPUT

# build environment
BUILD_FOLDER="build/"
TEMP_BUILD_FOLDER="build/_tmp"

# include uboot pre-build defines
SOURCE_FILE=("$UBOOT_SRC_FOLDER/build/.config")
CONFIG_FILE=("$UBOOT_SRC_FOLDER/build/include/autoconf.mk")

# variables
declare BOARD_DIR=""
declare CUR_SOC=""

# current branch/path/rev/name/remote in xml
#declare -a GIT_INFO=("branch" "path" "rev" "name" "remote")

function export_variables() {
	export BUILD_FOLDER
	export FIP_FOLDER
	export MANIFEST
	export CUR_SOC
	export BOARD_DIR
}