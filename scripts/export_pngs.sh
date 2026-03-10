#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
input_dir="${root_dir}/files"
output_dir="${root_dir}/images"

mkdir -p "${output_dir}"

for svg in "${input_dir}"/*.svg; do
  base="$(basename "${svg}" .svg)"
  inkscape "${svg}" --export-type=png --export-filename="${output_dir}/${base}.png"
done
