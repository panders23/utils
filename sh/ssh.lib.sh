ssh_get_known_hosts() {
    local known_hosts_files=()
    local known_hosts=()

    cat < "${HOME}/.ssh/config" > /dev/null

    while read -r line ; do
        if [[ "${line}" =~ \ *UserKnownHostsFile ]]; then
            known_hosts_files+=("${line#* }")
        fi
    done < "${HOME}/.ssh/config"

    for (( i=0; i < ${#known_hosts_files[@]}; i++ )) ; do
        hosts_file="${known_hosts_files[$i]/\~/$HOME}"
        [[ -f "${hosts_file}" ]] || continue

        while read -r line ; do
            line="${line#* }"
            line="${line#* }"
            line="${line%% *}"
            line="${line%%,*}"
            line="${line#\[*}"
            line="${line/\]/}"
            known_hosts+=($line)
        done < <(ssh-keygen -l -f "${hosts_file}")
    done

    echo -n ${known_hosts[@]}
}
