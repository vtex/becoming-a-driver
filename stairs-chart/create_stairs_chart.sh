#!/bin/bash

function get_skill_level() {
    skill=$1
    jq -r --arg skill "$skill" '.[$skill]' $input_file | tr '[:upper:]' '[:lower:]' | tr ' ' '-'
}

cp stairs-chart.html.tpl stairs-chart.html

for input_file in ../levels/*.json; do
    level=$(basename $input_file .json | tr '[:lower:]' '[:upper:]')
    
    sed -i "s/\${"$level"_pss}/$(get_skill_level "Problem-Solving Strategies")/g" stairs-chart.html
    sed -i "s/\${"$level"_dod}/$(get_skill_level "Data-oriented Decision Making")/g" stairs-chart.html
    sed -i "s/\${"$level"_doc}/$(get_skill_level "Documentation")/g" stairs-chart.html
    sed -i "s/\${"$level"_qco}/$(get_skill_level "Quality Consciousness")/g" stairs-chart.html
    sed -i "s/\${"$level"_eco}/$(get_skill_level "Effective Communication")/g" stairs-chart.html
    sed -i "s/\${"$level"_med}/$(get_skill_level "Mediation")/g" stairs-chart.html
    sed -i "s/\${"$level"_inf}/$(get_skill_level "Influence")/g" stairs-chart.html
    sed -i "s/\${"$level"_ksh}/$(get_skill_level "Knowledge Sharing")/g" stairs-chart.html
    sed -i "s/\${"$level"_pfo}/$(get_skill_level "Problem Focus")/g" stairs-chart.html
    sed -i "s/\${"$level"_eex}/$(get_skill_level "Embracing Experimentation")/g" stairs-chart.html
    sed -i "s/\${"$level"_svi}/$(get_skill_level "Strategic Vision")/g" stairs-chart.html
    sed -i "s/\${"$level"_omi}/$(get_skill_level "Owners Mindset")/g" stairs-chart.html
done
