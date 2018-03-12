#!/usr/bin/env bash

set -e
#set -x

self_dir=$(dirname "$0")
base_dir=$( cd "$self_dir/.." ; pwd -P  )
jar_file="${base_dir}/fitnesse.jar"

if (( $# == 1 ))
then
  page_name="$1"
else
  echo "Usage: $0 <page name>"
  exit 1
fi

java -jar "$jar_file" -c "${page_name}?test&format=text"

