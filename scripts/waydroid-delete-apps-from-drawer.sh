#!/usr/bin/env bash
for i in ~/.local/share/applications/waydroid*desktop; do echo "NoDisplay=true" >> $i; done
