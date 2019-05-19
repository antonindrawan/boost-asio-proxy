#! /usr/bin/env bash

readonly script_dir=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)
readonly source_dir=${script_dir}
readonly output_dir=${script_dir}/build

mkdir -p ${output_dir}
cd ${output_dir}

cmake -G Ninja ${source_dir}
cmake --build ${output_dir}

