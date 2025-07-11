

################################################################################
### Head: Debug
##

DEFAULT_IS_DEBUG=false
IS_DEBUG="${IS_DEBUG:=$DEFAULT_IS_DEBUG}"

##
### Head: Debug
################################################################################


################################################################################
### Head: Util / Debug
##

util_debug_echo () {

	if is_debug; then
		echo "${@}" 1>&2
	fi

}

util_error_echo () {

	echo "${@}" 1>&2

}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: Base
##

##
## REF_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
##

find_dir_path () {

	if ! [ -d "$(dirname -- "${1}")" ]; then
		dirname -- "${1}"
		return 1
	fi
	echo "$(cd -- "$(dirname -- "${1}")" ; pwd)"

}

##
## THIS_BASE_DIR_PATH="$(find_dir_path "${0}")"
##


##
## $ export IS_DEBUG=true
##

is_debug () {

	if [ "${IS_DEBUG}" = "true" ]; then
		return 0
	fi

	return 1

}

is_not_debug () {

	! is_debug

}

base_var_init () {

	##
	## ## Base Path
	##

	REF_INIT_DIR_PATH="$(find_dir_path "${REF_INIT_DIR_PATH}/.")"
	REF_PLAN_DIR_PATH="$(find_dir_path "${REF_INIT_DIR_PATH}/../../.")"





	##
	## ## Main Path / Ext / Master
	##

	REF_MAIN_EXT_MASTER_DIR_NAME="master"
	REF_MAIN_EXT_MASTER_DIR_PATH="${REF_INIT_DIR_PATH}/${REF_MAIN_EXT_MASTER_DIR_NAME}"


	##
	## ## Main Path / Ext / Master / Sub
	##

	REF_MAIN_EXT_MASTER_UTIL_DIR_NAME="util"
	REF_MAIN_EXT_MASTER_UTIL_DIR_PATH="${REF_MAIN_EXT_MASTER_DIR_PATH}/${REF_MAIN_EXT_MASTER_UTIL_DIR_NAME}"

	REF_MAIN_EXT_MASTER_SYS_DIR_NAME="sys"
	REF_MAIN_EXT_MASTER_SYS_DIR_PATH="${REF_MAIN_EXT_MASTER_DIR_PATH}/${REF_MAIN_EXT_MASTER_SYS_DIR_NAME}"

	REF_MAIN_EXT_MASTER_MOD_DIR_NAME="mod"
	REF_MAIN_EXT_MASTER_MOD_DIR_PATH="${REF_MAIN_EXT_MASTER_DIR_PATH}/${REF_MAIN_EXT_MASTER_MOD_DIR_NAME}"






	return 0

}

base_var_dump () {

	is_not_debug && return 0

	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: base_var_dump"
	util_debug_echo "##"
	util_debug_echo




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Note"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "##"
	util_debug_echo "## **Hide This Info**"
	util_debug_echo "##"
	util_debug_echo "## \$ export IS_DEBUG=false"
	util_debug_echo "##"
	util_debug_echo




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Base Path"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "REF_BASE_DIR_PATH=${REF_BASE_DIR_PATH}"
	util_debug_echo "REF_INIT_DIR_PATH=${REF_INIT_DIR_PATH}"
	util_debug_echo "REF_PLAN_DIR_PATH=${REF_PLAN_DIR_PATH}"
	util_debug_echo




	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Main Path / Ext / Master"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "REF_MAIN_EXT_MASTER_DIR_NAME=${REF_MAIN_EXT_MASTER_DIR_NAME}"
	util_debug_echo "REF_MAIN_EXT_MASTER_DIR_PATH=${REF_MAIN_EXT_MASTER_DIR_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Main Path / Ext / Master / Sub"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "REF_MAIN_EXT_MASTER_UTIL_DIR_NAME=${REF_MAIN_EXT_MASTER_UTIL_DIR_NAME}"
	util_debug_echo "REF_MAIN_EXT_MASTER_UTIL_DIR_PATH=${REF_MAIN_EXT_MASTER_UTIL_DIR_PATH}"
	util_debug_echo

	util_debug_echo "REF_MAIN_EXT_MASTER_SYS_DIR_NAME=${REF_MAIN_EXT_MASTER_SYS_DIR_NAME}"
	util_debug_echo "REF_MAIN_EXT_MASTER_SYS_DIR_PATH=${REF_MAIN_EXT_MASTER_SYS_DIR_PATH}"
	util_debug_echo

	util_debug_echo "REF_MAIN_EXT_MASTER_MOD_DIR_NAME=${REF_MAIN_EXT_MASTER_MOD_DIR_NAME}"
	util_debug_echo "REF_MAIN_EXT_MASTER_MOD_DIR_PATH=${REF_MAIN_EXT_MASTER_MOD_DIR_PATH}"
	util_debug_echo






	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: base_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

##
### Tail: Base
################################################################################
