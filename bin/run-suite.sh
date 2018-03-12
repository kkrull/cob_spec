#!/usr/bin/env bash

set -e
#set -x

self_dir=$(dirname "$0")
base_dir=$( cd "$self_dir/.." ; pwd -P  )
jar_file="${base_dir}/fitnesse.jar"

if (( $# == 0 ))
then
  page_name='HttpTestSuite'
elif (( $# == 1 ))
then
  page_name="$1"
else
  echo "Usage: $0 [page name]"
  exit 1
fi

java -jar "$jar_file" -c "${page_name}?suite&format=text"

