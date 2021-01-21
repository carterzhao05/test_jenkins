#!/bin/bash
echo "hello"
llvm-cov show --format=html --output-dir=/mari/cov  /bandwidth_eval_fuzz -instr-profile=/mari.profdata
