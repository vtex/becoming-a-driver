#!/bin/bash

levels=(l1 l2 l3 l4 l5);
for level in ${levels[@]}; do
    /usr/bin/env python3 radar.py "./levels/$level.json" --output "images/$level.png"
    for inner in ${levels[@]}; do
        if [ $level != $inner ] ; then
            /usr/bin/env python3 radar.py "./levels/$level.json" --compare-to "./levels/$inner.json" --output "images/$level-$inner.png"
        fi
    done
done