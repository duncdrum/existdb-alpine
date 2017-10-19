#!/bin/bash
set -e

# catch missing password
if [ -n "$EXIST_ADMIN_PASSWORD" ]; then
# inject password
bin/client.sh -l -s -u admin << EOF
passwd admin
${EXIST_ADMIN_PASSWORD}
${EXIST_ADMIN_PASSWORD}
quit
EOF
fi

# lets start exist...
exec bin/startup.sh
