#/bin/bash

(cd stairs-chart && ./create_stairs_chart.sh)
cp stairs-chart/stairs-chart.html docs/stairs-chart.html

(cd radar-charts && make)
cp radar-charts/images/*.png docs/career-path/assets/