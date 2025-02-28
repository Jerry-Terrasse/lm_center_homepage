---
title: Large Model Knowledge Enhancement Research Group
date: 1015-01-01 # to control the display order
type: landing

design:
  spacing: '1rem'

sections:
  - block: collection
    id: members
    content:
      title: Team Members
      filters:
        folders:
          - authors
        tag: kg_prof
      count: 0
    design:
      view: people-grid
      columns: 4
  - block: markdown
    content:
      title: Research Overview
      text: |
        The LLM + Knowledge research group has published more than 20 papers in high-level international conferences and journals in the fields of artificial intelligence, knowledge graphs, and natural language processing. It has undertaken over 10 related R&D projects for companies such as Huawei, Tencent, BAAI, Baichuan, State Grid, and CETC.

        ### Representative Achievement 1: Foundation Model Knowledge Enhancement
        ![base](/research/ke/base.png)

        Conventional knowledge graph reasoning methods typically assume a single, static graph where each entity and relation is represented by a vector via self-supervised learning, followed by designing scoring functions. However, real-world knowledge graphs are often multi-sourced and dynamically updated. To address multi-source knowledge graph reasoning, we propose a universal foundation model that leverages contextual prompt graphs. This model uses prompt graphs as context to capture general reasoning patterns across multiple knowledge graphs and employs a unified tokenizer for comprehensive representations. Pretrained on only three universal knowledge graphs, the model was extensively evaluated on 43 datasets under both transductive and inductive link prediction settings. The results demonstrate its universal reasoning capability on multi-source knowledge graphs, outperforming state-of-the-art supervised methods on most datasets.

        #### Related Paper:

        <div>
          Yuanning Cui, Zequn Sun, Wei Hu. <a href="https://arxiv.org/abs/2410.12288">A prompt-based knowledge graph foundation model for universal in-context reasoning</a>. NeurIPS, 2024.
        </div>

        <div>
          Xiangrong Zhu, Yuexiang Xie, Yi Liu, Yaliang Li, Wei Hu. <a href="placeholder">Knowledge graph-guided retrieval augmented generation</a>. NAACL, 2025.
        </div>

        <div>
          Xindi Luo, Zequn Sun, Jing Zhao, Zhe Zhao, Wei Hu. <a href="https://arxiv.org/abs/2403.14950">KnowLA: Enhancing parameter-efficient finetuning with knowledgeable adaptation</a>. NAACL, 7146–7159, 2024.
        </div>

        ### Representative Achievement 2: Code Large Model
        ![code](/research/ke/code.png)

        With the rapid advancement of large language models in code generation, we have turned our attention to enhancing models' reasoning abilities in complex programming scenarios. We propose an intelligent code generation framework—PairCoder—based on multi-plan exploration and feedback-driven optimization. Inspired by pair programming in software engineering, the framework features two collaborative agents: Navigator and Driver. Navigator is responsible for high-level problem analysis, generating multiple potential solution plans, and dynamically adjusting strategies based on feedback; Driver focuses on concrete code generation, testing, and debugging. Through iterative collaboration, these agents achieve global exploration and incremental optimization in code generation. Experiments on five code generation benchmark datasets and three foundation models show that our approach significantly outperforms existing methods in accuracy, especially in complex programming tasks, while maintaining high computational efficiency and cost-effectiveness.

        #### Related Paper:

        <div>
          Huan Zhang, Wei Cheng, Yuhan Wu, Wei Hu. <a href="https://dl.acm.org/doi/abs/10.1145/3691620.3695506">A pair programming framework for code generation via multi-plan exploration and feedback-driven refinement</a>. ASE, 1319–1331, 2024. Distinguished paper award.
        </div>

        <div>
          Wei Cheng, Yuhan Wu, Wei Hu. <a href="https://arxiv.org/abs/2405.19782">Dataflow-guided retrieval augmentation for repository-level code completion</a>. ACL, 7957–7977, 2024.
        </div>
---

The LLM + Knowledge research group has been engaged in long-term research on large language model knowledge enhancement, controllable generation, and domain-specific construction. 