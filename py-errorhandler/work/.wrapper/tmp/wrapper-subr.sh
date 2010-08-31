transform_setname() {
	wrapsubr_name="$1"
}
transform_to() {
	arg="$1"
	$debug_log $wrapperlog "    ($wrapsubr_name) to: $1"
	addtocache=yes
}
transform_to_and_split() {
	arg="$1"
	$debug_log $wrapperlog "    ($wrapsubr_name) to: $1 [split]"
	addtocache=yes
	split_arg=yes
}
transform_discard() {
	$debug_log $wrapperlog "    ($wrapsubr_name) discarded: $arg"
	arg=""
	addtocache=yes
	split_arg=yes
}
transform_discard_with_warning() {
	_warning=${1-"discarding option $arg"}
	msg_log "$wrapperlog" "WARNING: [$wrapsubr_name] $_warning"
	transform_discard
	addtocache=no
}
transform_pass() {
	$debug_log $wrapperlog "    ($wrapsubr_name) to: $arg [unchanged]"
	addtocache=yes
}
transform_pass_with_warning() {
	_warning=${1-"passing unknown option $arg"}
	msg_log "$wrapperlog" "WARNING: [$wrapsubr_name] $_warning"
	$debug_log $wrapperlog "    ($wrapsubr_name) to: $arg [unchanged]"
	addtocache=no
}
transform_fail() {
	msg_log "$wrapperlog" "ERROR: [$wrapsubr_name] $1"
	msg_log stderr "ERROR: [$wrapsubr_name] $1"
	exit 1
}
fail() {
	msg_log "$wrapperlog" "ERROR: [$1] $2"
	msg_log stderr "ERROR: [$1] $2"
	exit 1
}
