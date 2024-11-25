#!bin/bash 

# intended usage: "assert VARNAME || die "VARNAME do not exist" 
assert() {
    local var="$1"
    local val
    eval "val=\${$var}"

    echo $val
    if [[ -z "$val" ]]; then
        echo "Error: $var must not be empty or null"
        return 1
    fi
    return 0
}
