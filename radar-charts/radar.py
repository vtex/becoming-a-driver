import argparse
import json
import plotly.graph_objects as go
from typing import Any


label_mapping = {
    '': 0,
    'Beginner': 1,
    'Competent': 2,
    'Proficient': 3,
    'Expert': 4,
    # 'Disruptor': 5
}


def read_json(path) -> Any:
    with open(path, 'r') as file:
        return json.load(file)


def add_trace(fig, level_data, color):
    categories = ['Problem-Solving Strategies', 'Data-oriented Decision Making', 'Documentation', 'Quality Consciousness', 'Effective Communication',
                  'Mediation', 'Influence', 'Knowledge Sharing', 'Problem Focus', 'Embracing Experimentation', 'Strategic Vision', 'Owners Mindset']
    values = []
    numeric_values = []
    for label in categories:
        level = level_data[label]
        if level == 'Not Applicable':
            level = ''

        values.append(level)
        numeric_values.append(label_mapping.get(level))

    # closing polygon
    numeric_values.append(numeric_values[0])
    categories.append(categories[0])

    numeric_values = list(reversed(numeric_values))
    values = list(reversed(values))
    categories = list(reversed(categories))

    fig.add_trace(go.Scatterpolar(
        r=numeric_values,
        theta=categories,
        fill='toself',
        line=dict(color=color, width=2),
        connectgaps=True,
    ))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('level', help='level')
    parser.add_argument('--compare-to', dest='compare_to',
                        nargs='?', help='compare to another level')
    parser.add_argument('--output', nargs='?',
                        help='output filename', required=True)
    args = parser.parse_args()

    level_data = read_json(args.level)
    if args.compare_to != None:
        compare_to_data = read_json(args.compare_to)

    fig = go.Figure(layout=go.Layout(
        paper_bgcolor='rgba(0,0,0,0)',
        plot_bgcolor='rgba(0,0,0,0)'
    ))

    add_trace(fig, level_data, 'pink')
    if args.compare_to != None:
        add_trace(fig, compare_to_data, 'plum')

    fig.update_layout(
        polar=dict(
            radialaxis=dict(
                visible=True,
                tickvals=list(label_mapping.values()),
                ticktext=list(label_mapping.keys()),
                range=[-0.3, 5],
                tickfont=dict(size=12, color='grey'),
                angle=90,
                tickangle=90,  # so that tick labels are not upside down
            )
        ),
        showlegend=False,
        width=1235,
        height=988
    )

    # fig.show()
    fig.write_image(args.output)


main()
