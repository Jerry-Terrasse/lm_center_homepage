---
title: 大模型知识增强研究小组
date: 1015-01-01 # to control the display order
type: landing

design:
  spacing: '1rem'

sections:
  - block: collection
    id: members
    content:
      title: 团队成员
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
      title: 重要成果简介
      text: |
        南京大学大模型知识增强研究小组长期从事大模型知识增强、大模型可控生成、领域大模型构建等方向研究。在人工智能、知识图谱、自然语言处理等国际高水平会议和期刊上发表论文20余篇，承担了华为、腾讯、智源、百川、国家电网、中电科等十余项大模型相关研发项目。

        ### 代表性成果1：基座模型知识增强
        ![base](./base.png)

        现有知识图谱推理方法通常假设图谱是单一且静态的，通过自监督学习为每个实体和关系生成向量表征，并设计打分函数进行推理。然而，真实世界中的知识图谱往往是多源且动态更新的。针对多源知识图谱推理，我们提出了一种基于上下文提示图的通用知识图谱推理基座模型。该模型利用提示图作为上下文，建模多源知识图谱的通用推理模式，并通过统一分词器实现知识图谱的通用表征。通过仅在3个通用知识图谱上预训练该基座模型，在转导式和归纳式链接预测任务设定下的43个知识图谱数据集上进行了广泛实验。结果表明，该基座模型在多源知识图谱上具有通用推理能力，并在大多数数据集上取得比现有有监督先进方法更优的预测性能。

        #### 相关论文：

        <div>
          Yuanning Cui, Zequn Sun, Wei Hu. <a href="https://arxiv.org/abs/2410.12288">A prompt-based knowledge graph foundation model for universal in-context reasoning</a>. NeurIPS, 2024.
        </div>

        <div>
          Xiangrong Zhu, Yuexiang Xie, Yi Liu, Yaliang Li, Wei Hu. <a href="placeholder">Knowledge graph-guided retrieval augmented generation</a>. NAACL, 2025.
        </div>

        <div>
          Xindi Luo, Zequn Sun, Jing Zhao, Zhe Zhao, Wei Hu. <a href="https://arxiv.org/abs/2403.14950">KnowLA: Enhancing parameter-efficient finetuning with knowledgeable adaptation</a>. NAACL, 7146–7159, 2024.
        </div>

        ### 代表性成果2：代码大模型
        ![code](./code.png)

        随着大语言模型在代码生成领域的快速发展，我们将目光聚焦于如何提升模型在复杂编程场景中的推理能力，提出了基于多计划探索和反馈驱动优化的智能代码生成框架——PairCoder。该框架借鉴软件工程中的结对编程理念，设计了两个协作式智能代理：Navigator 和 Driver。Navigator 负责从高层次分析问题，生成多种潜在解决方案计划，并根据执行反馈动态调整策略；Driver 专注于具体的代码生成、测试和修复任务。两者通过多轮迭代协作，实现代码生成的全局探索与逐步优化。在5个代码生成基准数据集和3个基座模型上的实验表明，该方法在准确率上显著优于现有方法，尤其在复杂编程问题中表现出卓越的性能，同时保持了较高的计算效率和成本可控性。

        #### 相关论文：

        <div>
          Huan Zhang, Wei Cheng, Yuhan Wu, Wei Hu. <a href="https://dl.acm.org/doi/abs/10.1145/3691620.3695506">A pair programming framework for code generation via multi-plan exploration and feedback-driven refinement</a>. ASE, 1319–1331, 2024. Distinguished paper award.
        </div>

        <div>
          Wei Cheng, Yuhan Wu, Wei Hu. <a href="https://arxiv.org/abs/2405.19782">Dataflow-guided retrieval augmentation for repository-level code completion</a>. ACL, 7957–7977, 2024.
        </div>
---

大模型知识增强研究小组长期从事大模型知识增强、代码生成等相关方向研究。在大模型时代，主要关注模型的知识增强、推理和多语言能力等方面的提升，开展了基座模型知识增强、代码大模型等研究。