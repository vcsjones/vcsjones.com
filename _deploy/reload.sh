#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rsync -r --delete --existing --ignore-non-existing "$DIR/../_site/" "/var/wwwroot/vcsjones.com/"
service nginx reload