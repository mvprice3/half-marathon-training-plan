#!/bin/sh
# Builds index.html for GitHub Pages from training-plan.html, the single source of the page.
set -e
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html>' '<html lang="en-GB">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
    '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>' \
    '</head>' '<body>'
  cat training-plan.html
  printf '%s\n' '</body>' '</html>'
} > index.html
