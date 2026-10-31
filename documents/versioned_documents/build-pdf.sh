#!/usr/bin/env bash
# Builds a document PDF in Docker, from any folder: nothing to install except Docker.
#   documents/versioned_documents/build-pdf.sh specifications 1.1      -> specifications/pdf/specifications_v1.1.pdf
#   documents/versioned_documents/build-pdf.sh quality_plan 1.1        -> quality_plan/pdf/quality_plan_v1.1.pdf
#   documents/versioned_documents/build-pdf.sh specifications wbs      -> specifications/pdf/wbs/*.pdf
set -euo pipefail

docs="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
doc="${1:?usage: build-pdf.sh <specifications|quality_plan> <version|wbs>}"
what="${2:?usage: build-pdf.sh <specifications|quality_plan> <version|wbs>}"

[ -f "$docs/$doc/Makefile" ] || { echo "unknown document: $doc" >&2; exit 1; }

if [ "$what" = wbs ]; then target=(wbs); else target=(pdf "VERSION=$what"); fi

docker build -q -t moozo-docs - < "$docs/Dockerfile" > /dev/null
docker run --rm -v "$docs":/docs -w "/docs/$doc" -u "$(id -u):$(id -g)" -e HOME=/tmp \
  moozo-docs make -s "${target[@]}"
