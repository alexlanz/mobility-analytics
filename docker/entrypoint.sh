#!/bin/bash

mkdir -p ~/.m2

cat > ~/.m2/settings.xml << EOF
<settings>
    <localRepository>$PWD/docker/tmp/.m2</localRepository>
    <servers></servers>
</settings>
EOF

/bin/bash -c "$@"

