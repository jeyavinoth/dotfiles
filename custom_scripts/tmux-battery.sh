#!/bin/sh
# Print battery percentage for the tmux status bar (macOS).
# Falls back to nothing if pmset is unavailable or no battery present.
pmset -g batt 2>/dev/null | grep -Eo '[0-9]+%' | head -1
