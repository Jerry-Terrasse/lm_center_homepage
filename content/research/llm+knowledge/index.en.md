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

        ### Representative Achievement 1: Efficient Collaboration Between Language Models and Graph Models
        ![enhance](enhance.png)

        Large Language Models (LLMs) face challenges such as knowledge gaps and difficulty in updating internal knowledge, often leading to the problem of “hallucinations”. Knowledge graphs, which store vast amounts of structured knowledge, provide a data foundation for addressing this issue. In recent years, our research team has conducted in-depth studies following the “foundation model - knowledge injection - retrieval augmentation” framework and has published a series of findings in top-tier international conferences: At NeurIPS 2024, we proposed the first knowledge graph foundation model in China; At NAACL 2024, we presented an LLM enhancement method based on embedding-based knowledge adapters and instruction tuning; At NAACL 2025, we introduced a retrieval-augmented generation (RAG) method for question answering (QA) using knowledge graphs.

        #### Related Paper:

        <div>
          Yuanning Cui, Zequn Sun, Wei Hu. <a href="https://arxiv.org/abs/2410.12288">A prompt-based knowledge graph foundation model for universal in-context reasoning</a>. NeurIPS, 2024.
        </div>

        <div>
          Xiangrong Zhu, Yuexiang Xie, Yi Liu, Yaliang Li, Wei Hu. <a href="https://arxiv.org/abs/2502.06864">Knowledge graph-guided retrieval augmented generation</a>. NAACL, 2025.
        </div>

        <div>
          Xindi Luo, Zequn Sun, Jing Zhao, Zhe Zhao, Wei Hu. <a href="https://arxiv.org/abs/2403.14950">KnowLA: Enhancing parameter-efficient finetuning with knowledgeable adaptation</a>. NAACL, 2024.
        </div>

        ### Representative Achievement 2: Large Model Controllable Generation
        ![control](control.png)

        With the rapid development of large models, ensuring controllability over the attributes of generated content is crucial. This includes the ability to regulate aspects such as sentiment tendencies and topic types. Our research team has made several advancements in this area: At ACL 2024, we investigated the issue of imbalanced attribute associations and introduced disentangled counterfactual augmentation; At AAAI 2024, we explored optimization strategies and proposed a multi-list preference optimization strategy for fine-tuning protein large models; At ICDE 2024, we studied model interpretability by integrating knowledge graphs and designed a semantic matching-based explanation generation method.

        #### Related Paper:

        <div>
          Yi Liu, Xiangyu Liu, Xiangrong Zhu, Wei Hu. <a href="https://arxiv.org/abs/2405.19958">Multi-aspect controllable text generation with disentangled counterfactual augmentation</a>. ACL, 2024.
        </div>

        <div>
          Xiangyu Liu, Yi Liu, Silei Chen, Wei Hu. <a href="http://arxiv.org/abs/2501.15007">Controllable protein sequence generation with large language model preference optimization</a>. AAAI, 2025.
        </div>

        <div>
          Xiaobin Tian, Zequn Sun, Wei Hu. <a href="https://arxiv.org/abs/2312.04877">Generating explanations to understand and repair embedding-based entity alignment</a>. ICDE, 2024.
        </div>

        ### Representative Achievement 3: Domain-specific Large Models
        ![code](code.png)

        The construction of domain-specific large models is crucial for enhancing the intelligence level of specific industries. Compared to general-purpose large models, domain-specific models can more accurately comprehend specialized knowledge, provide high-quality decision support, and improve the reliability and interpretability of real-world applications. In medicine, our research team developed the “ChaoYi” large model, which enables personalized health education and prescription generation for chronic diseases such as diabetes and hypertension. It serves 20 primary healthcare centers in Shanghai and Nanjing. In software engineering, we developed a code large model to assist with code generation and optimization, exploring cutting-edge advancements in intelligent software development.

        #### Related Paper:

        <div>
          Huan Zhang, Wei Cheng, Yuhan Wu, Wei Hu. <a href="https://arxiv.org/abs/2409.05001">A pair programming framework for code generation via multi-plan exploration and feedback-driven refinement</a>. ASE, 2024. Distinguished paper award.
        </div>

        <div>
          Wei Cheng, Yuhan Wu, Wei Hu. <a href="https://arxiv.org/abs/2405.19782">Dataflow-guided retrieval augmentation for repository-level code completion</a>. ACL, 2024.
        </div>
---

The LLM + Knowledge research group has been engaged in long-term research on large language model knowledge enhancement, controllable generation, and domain-specific construction. 