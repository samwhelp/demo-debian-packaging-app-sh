

################################################################################
### Head: Master / Sys / Demo
##

sys_demo () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## sys_demo"
	util_error_echo "##"
	util_error_echo


	yad --width=400 --height=300 \
		--center \
		--title="Demo App" \
		--no-buttons \


	return 0
}

##
### Tail: Master / Sys / Tmp
################################################################################
