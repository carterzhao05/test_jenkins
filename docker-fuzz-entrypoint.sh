#!/bin/bash
echo "hello"
ls /mari/test/
llvm-cov show --format=html --output-dir=/mari/test/cov  /bandwidth_eval_fuzz -instr-profile=/mari.profdata