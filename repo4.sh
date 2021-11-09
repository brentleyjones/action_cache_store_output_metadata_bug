#!/bin/bash

set -euo pipefail

echo "This (non-)repoduction doesn't use --experimental_action_cache_store_output_metadata and invalidates the analysis cache"
echo

bazel clean --expunge
echo "" > cache_bust.swift

echo "Populate the remote cache"
echo
bazel build //:test

echo
echo "Clean and build to download only top level"
echo
bazel clean
bazel build //:test

echo
echo "Remove remote cache for a build, invalidate the analysis cache, and get a build failure"
echo
bazel build --remote_cache= --swiftcopt=-DCACHEBUSTER //:test
