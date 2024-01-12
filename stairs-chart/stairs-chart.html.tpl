<style>
    * {
        margin-left: 0;
    }

    body {
        font-family: Verdana, Geneva, Tahoma, sans-serif;
    }

    #chart {
        display: grid;
        grid-template-columns: 10% 30% repeat(7, 1fr);
        grid-template-rows: repeat(14, 1fr);
    }

    #journey {
        display: grid;
        grid-template-columns: 10% 30% 13% 11% 26% 10%;
        grid-template-rows: 1fr;
        margin-bottom: 20px;
        font-size: 14pt;
        font-weight: bold;
    }

    #caption {
        display: grid;
        grid-template-columns: 1fr 20px repeat(5, 1fr);
        grid-template-rows: repeat(2, 1fr);
        width: 80%;
    }

    .caption-header {
        grid-row: 1 / span 2;
        grid-column: 1 / span 1;
        align-items: center;
        text-align: center;
        font-weight: bold;
        font-size: 11pt;
    }

    .implementer {
        background-color: lightsalmon;
        border: 1px solid orange;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 35px;
        white-space: nowrap;
        overflow: hidden;
    }

    .solver {
        background-color: #a19d9d;
        border: 1px solid gray;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 35px;
        white-space: nowrap;
        overflow: hidden;
    }

    .finder {
        background-color: lightsteelblue;
        border: 1px solid steelblue;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 35px;
        white-space: nowrap;
        overflow: hidden;
    }

    .driver {
        background-color: lightcoral;
        border: 1px solid purple;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 35px;
        white-space: nowrap;
        overflow: hidden;
    }

    .plant-trees {
        grid-row: 2 / span 4;
        grid-column: 1 / span 1;
        background-color: #55c355;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .flourish-your-neighborhood {
        grid-row: 6 / span 4;
        grid-column: 1 / span 1;
        background-color: lightcoral;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .see-the-whole-forest {
        grid-row: 10 / span 4;
        grid-column: 1 / span 1;
        background-color: lightseagreen;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .pillar-label {
        transform: rotate(270deg);
        font-size: 14pt;
        font-weight: bold;
    }

    .line {
        border-bottom: 1px dotted black;
    }

    .header {
        text-align: center;
        font-weight: bold;
    }

    .title {
        font-size: 14pt;
        padding: 0.5rem;
        border-bottom: 1pt dotted black;
    }

    .pink-line {
        border-bottom: 1pt dotted black;
        background-color: pink;
    }

    .plum-line {
        border-bottom: 1px dotted black;
        background-color: plum;
    }

    .not-applicable {
        height: 100%;
        background-color: var(--md-default-bg-color);
    }

    .beginner {
        height: 80%;
        background-color: var(--md-default-bg-color);
    }

    .competent {
        height: 60%;
        background-color: var(--md-default-bg-color);
    }

    .proficient {
        height: 40%;
        background-color: var(--md-default-bg-color);
    }

    .expert {
        height: 20%;
        background-color: var(--md-default-bg-color);
    }

</style>
<div id="journey">
    <div class="empty"></div>
    <div class="empty"></div>
    <div class="journey-header implementer">Implementer</div>
    <div class="journey-header solver">Solver</div>
    <div class="journey-header finder">Finder</div>
    <div class="journey-header driver">Driver</div>
</div>
<div id="chart">
    <div class="empty"></div>
    <div class="empty"></div>
    <div class="plant-trees"><div class="pillar-label">Plant Trees</div></div>
    <div class="flourish-your-neighborhood"><div class="pillar-label">Flourish Your Neighborhood</div></div>
    <div class="see-the-whole-forest"><div class="pillar-label">See the Whole Forest</div></div>
    <div class="header">L1</div>
    <div class="header">L2</div>
    <div class="header">L3</div>
    <div class="header">L4</div>
    <div class="header">L5</div>
    <div class="header">L6</div>
    <div class="header">L7</div>
    <div class="title">Problem Solving Strategies</div>
    <div class="pink-line"><div class="${L1_pss}"></div></div>
    <div class="pink-line"><div class="${L2_pss}"></div></div>
    <div class="pink-line"><div class="${L3_pss}"></div></div>
    <div class="pink-line"><div class="${L4_pss}"></div></div>
    <div class="pink-line"><div class="${L5_pss}"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="title">Data-Oriented Decisions</div>
    <div class="plum-line"><div class="${L1_dod}"></div></div>
    <div class="plum-line"><div class="${L2_dod}"></div></div>
    <div class="plum-line"><div class="${L3_dod}"></div></div>
    <div class="plum-line"><div class="${L4_dod}"></div></div>
    <div class="plum-line"><div class="${L5_dod}"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="title">Documentation</div>
    <div class="pink-line"><div class="${L1_doc}"></div></div>
    <div class="pink-line"><div class="${L2_doc}"></div></div>
    <div class="pink-line"><div class="${L3_doc}"></div></div>
    <div class="pink-line"><div class="${L4_doc}"></div></div>
    <div class="pink-line"><div class="${L5_doc}"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="title">Quality Consciousness</div>
    <div class="plum-line"><div class="${L1_qco}"></div></div>
    <div class="plum-line"><div class="${L2_qco}"></div></div>
    <div class="plum-line"><div class="${L3_qco}"></div></div>
    <div class="plum-line"><div class="${L4_qco}"></div></div>
    <div class="plum-line"><div class="${L5_qco}"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="title">Effective Communication</div>
    <div class="pink-line"><div class="${L1_eco}"></div></div>
    <div class="pink-line"><div class="${L2_eco}"></div></div>
    <div class="pink-line"><div class="${L3_eco}"></div></div>
    <div class="pink-line"><div class="${L4_eco}"></div></div>
    <div class="pink-line"><div class="${L5_eco}"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="title">Mediation</div>
    <div class="plum-line"><div class="${L1_med}"></div></div>
    <div class="plum-line"><div class="${L2_med}"></div></div>
    <div class="plum-line"><div class="${L3_med}"></div></div>
    <div class="plum-line"><div class="${L4_med}"></div></div>
    <div class="plum-line"><div class="${L5_med}"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="title">Influence</div>
    <div class="pink-line"><div class="${L1_inf}"></div></div>
    <div class="pink-line"><div class="${L2_inf}"></div></div>
    <div class="pink-line"><div class="${L3_inf}"></div></div>
    <div class="pink-line"><div class="${L4_inf}"></div></div>
    <div class="pink-line"><div class="${L5_inf}"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="title">Knowledge Sharing</div>
    <div class="plum-line"><div class="${L1_ksh}"></div></div>
    <div class="plum-line"><div class="${L2_ksh}"></div></div>
    <div class="plum-line"><div class="${L3_ksh}"></div></div>
    <div class="plum-line"><div class="${L4_ksh}"></div></div>
    <div class="plum-line"><div class="${L5_ksh}"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="title">Problem Focus</div>
    <div class="pink-line"><div class="${L1_pfo}"></div></div>
    <div class="pink-line"><div class="${L2_pfo}"></div></div>
    <div class="pink-line"><div class="${L3_pfo}"></div></div>
    <div class="pink-line"><div class="${L4_pfo}"></div></div>
    <div class="pink-line"><div class="${L5_pfo}"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="title">Embracing Experimentation</div>
    <div class="plum-line"><div class="${L1_eex}"></div></div>
    <div class="plum-line"><div class="${L2_eex}"></div></div>
    <div class="plum-line"><div class="${L3_eex}"></div></div>
    <div class="plum-line"><div class="${L4_eex}"></div></div>
    <div class="plum-line"><div class="${L5_eex}"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="title">Strategic Vision</div>
    <div class="pink-line"><div class="${L1_svi}"></div></div>
    <div class="pink-line"><div class="${L2_svi}"></div></div>
    <div class="pink-line"><div class="${L3_svi}"></div></div>
    <div class="pink-line"><div class="${L4_svi}"></div></div>
    <div class="pink-line"><div class="${L5_svi}"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="title">Owner's Mindset</div>
    <div class="plum-line"><div class="${L1_omi}"></div></div>
    <div class="plum-line"><div class="${L2_omi}"></div></div>
    <div class="plum-line"><div class="${L3_omi}"></div></div>
    <div class="plum-line"><div class="${L4_omi}"></div></div>
    <div class="plum-line"><div class="${L5_omi}"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
    <div class="plum-line"><div class="not-applicable"></div></div>
</div>

<div id="caption">
    <div class="caption-header">Skill Acquisition Process</div>
    <div class="empty"></div>
    <div class="pink-line"><div class="not-applicable"></div></div>
    <div class="pink-line"><div class="beginner"></div></div>
    <div class="pink-line"><div class="competent"></div></div>
    <div class="pink-line"><div class="proficient"></div></div>
    <div class="pink-line"><div class="expert"></div></div>
    <div class="empty"></div>
    <div class="caption-label">Not Applicable</div>
    <div class="caption-label">Beginer</div>
    <div class="caption-label">Competent</div>
    <div class="caption-label">Proficient</div>
    <div class="caption-label">Expert</div>
</div>