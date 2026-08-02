#!/bin/sh
set -eu

hosts_file="${REQUIEM_HOSTS_FILE:-/etc/hosts}"
current_hostname="${REQUIEM_HOSTNAME:-$(hostname)}"

case "$current_hostname" in
    ''|*[!A-Za-z0-9.-]*)
        echo "Invalid local hostname: $current_hostname" >&2
        exit 1
        ;;
esac

if [ ! -e "$hosts_file" ]; then
    : > "$hosts_file"
fi

if awk -v hostname="$current_hostname" '
    $1 ~ /^127\./ {
        for (field = 2; field <= NF; field++) {
            if ($field == hostname) {
                found = 1
            }
        }
    }
    END { exit(found ? 0 : 1) }
' "$hosts_file"; then
    exit 0
fi

printf '\n127.0.1.1\t%s\n' "$current_hostname" >> "$hosts_file"
