#!/usr/bin/env bash
set -euo pipefail

typst compile --root . paper/ko/main-ko.typ paper/ko/main-ko.pdf
echo "Built paper/ko/main-ko.pdf"
