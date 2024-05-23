#!/bin/bash
set -e

##
# Pre-requirements:
# - env FUZZER: path to fuzzer work dir
##

git clone --no-checkout https://github.com/eurecom-s3/symcc.git "$FUZZER/symcc"
git -C "$FUZZER/symcc" checkout c3d9adf17768a3849b6d68fe25e33cef58ea2846

git -C "$FUZZER/symcc" submodule init
git -C "$FUZZER/symcc" submodule update --init --recursive

git clone --no-checkout https://github.com/Z3Prover/z3.git "$FUZZER/z3"
git -C "$FUZZER/z3" checkout 897cbf347bcf73ac986d50636b15f09968130880

git clone -b llvmorg-10.0.1 --depth 1 https://github.com/llvm/llvm-project.git "$FUZZER/llvm"