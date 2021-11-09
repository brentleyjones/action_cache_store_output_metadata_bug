#!/bin/bash

set -euo pipefail

echo "This repoduction uses --experimental_action_cache_store_output_metadata and changes a file (doesn't invalidate analysis)"
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
echo "Remove remote cache for a build, change a file, and get a build failure"
echo
echo "let cacheBust = true" > cache_bust.swift
bazel build --experimental_action_cache_store_output_metadata --remote_cache= //:test
