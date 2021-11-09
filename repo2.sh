#!/bin/bash

set -euo pipefail

echo "This repoduction uses --experimental_action_cache_store_output_metadata and invalidates the analysis cache"
echo

bazel clean --expunge
echo "" > cache_bust.swift

echo "Populate the remote cache"
echo
bazel build --experimental_action_cache_store_output_metadata //:test

echo
echo "Clean and build to download only top level"
echo
bazel clean
bazel build --experimental_action_cache_store_output_metadata //:test

echo
echo "Remove remote cache for a build, invalidate the analysis cache, and get a build failure"
echo
bazel build --experimental_action_cache_store_output_metadata --remote_cache= --swiftcopt=-DCACHEBUSTER //:test
