#!/bin/sh
set -e
mkdir -p fixtures
for url in $(cat project-number-fixtures.csv |sed -n '2,$ p'|cut -d, -f2); do
  test -e fixtures/$(basename $url) ||
  ( cd fixtures && wget $url )
done
