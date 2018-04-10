#!/usr/bin/env bash

set -e

self_dir=$(dirname "$0")
base_dir=$( cd "$self_dir/.." ; pwd -P  )


( cd $HOME/go/src/github.com/kkrull/gohttp ; echo "*** Building ***" ; go build )
jar_file="${base_dir}/fitnesse.jar"
java -jar "$jar_file" -p 9090
