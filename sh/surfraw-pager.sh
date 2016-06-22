#!/usr/bin/env bash

# ~/.surfraw-pager.conf
# SURFRAW_text_browser="<path to utils.git>/sh/libs/surfraw-pager.lib.sh"
# SURFRAW_graphical=no

[[ -f ~/.surfraw-pager.conf ]] \
    && . ~/.surfraw-pager.conf

surfraw $@
