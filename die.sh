#!bin/bash 

# intended usage: "assert VARNAME || die "VARNAME do not exist" 
die() {
    rc=$?
    (( $# )) && printf '%s\n' "$*" >&2
    return $(( rc == 0 ? 1 : $rc))
}