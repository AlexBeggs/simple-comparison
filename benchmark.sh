#!/bin/bash

if [ -z "$ANDROID_HOME" ]
then
  echo "ANDROID_HOME needs to be set"
  exit;
fi
if ! [ -x "$(command -v bazel)" ]; then
  echo 'Error: bazel is not installed.' >&2
  exit 1
fi

targets="abiChangeWithLeafLocalCache abiChangeWithRootLocalCache androidManifestChangeWithLeafLocalCache androidManifestChangeWithRootLocalCache androidResourceChangeWithLeafLocalCache androidResourceChangeWithRootLocalCache cleanWithColdLocalCache nonAbiChangeWithLeafLocalCache nonAbiChangeWithRootLocalCache"
timestampDir=$(date +"%Y%m%d_%H%M%S")
iterations=10
warmups=6

./gradle-profiler --benchmark $targets --iterations=$iterations --warmups=$warmups --output-dir=output/$timestampDir
./gradle-profiler --benchmark --bazel $targets --iterations=$iterations --warmups=$warmups --output-dir=output/$timestampDir
