---
title: 科学大模型研究小组
date: 1005-01-01 # to control the display order
# author: test
type: landing

design:
  # Section spacing
  spacing: '1rem'

sections:
  - block: markdown
    content:
      # title: 科学大模型研究小组
      text: |
        ## 科学大模型研究小组
  - block: collection
    id: members
    content:
      title: 团队成员
      filters:
        folders:
          - authors
        tag: science_prof
      count: 0
    design:
      view: people-grid
      columns: 4
  - block: markdown
    content:
      title: 重要成果简介
      text: |
        科学大模型的出现为复杂科学研究注入了前所未有的动力，其强大的计算与模拟能力正在深刻改变多个领域的创新方式。从药物设计到材料开发，从能源优化到环境治理，科学大模型通过高效处理和分析海量数据，显著加速了科研进程，并为解决全球性挑战提供了新的可能性。首先，在药物研发领域，科学大模型能够模拟分子间的相互作用，预测化合物的活性、毒性和代谢特性，从而大幅缩短新药发现的时间周期。它不仅能够快速筛选出潜在的候选药物，还能揭示隐藏在复杂生物系统中的机制，为个性化医疗和精准治疗提供支持。例如，基于科学大模型的虚拟筛选技术已经在抗病毒药物和癌症治疗的研究中取得了突破性进展。其次，在材料科学领域，科学大模型通过整合物理、化学和工程学知识，可以预测新材料的性能并指导实验设计。这种能力对于开发高性能电池、半导体以及可持续材料至关重要。例如，利用科学大模型进行晶体结构预测，研究人员可以在极短时间内找到具有特定功能的新材料，而传统方法可能需要数年甚至更长时间。此外，科学大模型还通过跨学科的知识融合推动基础科学的发展。它能够挖掘海量文献和实验数据中的隐含规律，提出新的假设和理论框架。例如，在天文学中，科学大模型可以帮助分析宇宙微波背景辐射的数据，揭示暗物质和暗能量的本质；在气候科学中，它可以模拟复杂的地球系统，为应对气候变化提供科学依据。更重要的是，科学大模型降低了科研门槛，让更多研究者能够参与前沿探索。过去，由于高昂的成本和技术壁垒，许多小型实验室或发展中国家的研究团队难以开展高精度的计算模拟。而现在，借助云平台和开源工具，他们也可以使用先进的科学大模型来解决实际问题。这种普惠式的发展模式促进了全球范围内的科学合作，使得不同文化背景和地域的研究人员能够共同攻克难题。总之，科学大模型不仅是现代科研的重要工具，更是推动社会进步的关键力量。随着技术的不断演进，我们有理由相信，科学大模型将在未来带来更多颠覆性的创新成果，为人类社会创造更大的价值。代表性成果如下：

        ### 代表性成果1：临床试验的群体智能模型
        ![ClinicalAgent](ClinicalAgent.png)

        大型语言模型（LLMs）和多智能体系统在自然语言处理任务中展现了卓越的能力，例如文本生成、语义理解、逻辑推理等。然而，在临床试验这一高度专业化且数据敏感的领域，这些技术的应用仍面临诸多挑战。其中最突出的问题是对外部知识的访问受限，这直接影响了模型对复杂医学情境的理解与预测能力。为了解决这一问题，并充分发挥先进工具在临床研究中的潜力，我们提出了一种综合性的解决方案。该方案旨在通过整合多种先进技术，提升现有工具的可及性和实用性。具体而言，我们设计并开发了临床智能体系统（ClinicalAgent），这是一个基于多智能体架构的创新平台，专为临床试验任务量身定制。ClinicalAgent结合了当前最先进的技术成果，包括但不限于GPT-4这样的强大语言模型、高效的LEAST-TO-MOST策略以及ReAct推理框架。这些技术的协同作用不仅显著增强了LLMs在临床场景中的表现，还为其赋予了新的功能模块，使其能够更好地应对复杂的医学挑战。实验结果表明，所提出的解决方案在临床试验结果预测方面表现出色，其PR-AUC值达到了0.7908，较传统的标准提示方法提升了0.3326。这一改进不仅验证了ClinicalAgent的有效性，也为未来临床试验工具的发展提供了重要的参考方向。通过这种方式，我们可以期待更加智能化、精准化的临床研究流程，从而加速新药研发进程，提高医疗服务质量，最终造福更多患者。

        相关论文：

        Ling Yue, Sixue Xing, Jintai Chen, Tianfan Fu, <a href="https://dl.acm.org/doi/abs/10.1145/3698587.3701359" target="_blank">ClinicalAgent: Clinical Trial Multi-Agent System with Large Language Model-based Reasoning</a>, in Proceedings of the 15th ACM International Conference on Bioinformatics, Computational Biology and Health Informatics, 2024.


        ### 代表性成果2：用于药物重定向的群体智能模型
        ![DrugAgent](DrugAgent.png)

        药物再利用（Drug repurposing），即为现有药物寻找新的治疗用途，是一种极具潜力的加速药物开发的方法。这种方法不仅能够显著缩短新药上市的时间，还能降低研发成本，同时减少临床试验的风险。本文提出了一种创新的多智能体框架，该框架通过整合前沿的机器学习技术以及多种知识来源，进一步优化了药物再利用的过程。这一框架由三个专门设计的智能体组成，每个智能体都承担着独特的任务以实现协同工作。首先，AI智能体（AI Agent）负责构建强大的药物-靶点相互作用（Drug-Target Interaction, DTI）模型。它通过先进的算法分析复杂的生物数据，精准预测药物与潜在靶点之间的相互作用，从而为药物再利用提供科学依据。其次，知识图谱智能体（Knowledge Graph Agent）从多个已建立的数据库中提取DTI信息，例如DGIdb、DrugBank、CTD和STITCH等。这些数据库包含丰富的药物相关数据，是构建药物再利用模型的重要基础。最后，搜索智能体（Search Agent）通过与海量生物医学文献交互，对计算预测的结果进行注释和验证，确保模型输出的准确性和可靠性。通过整合这三个智能体的输出，该系统能够充分利用多样化的数据来源，提出切实可行的药物再利用候选方案。初步研究结果表明，这一框架不仅能够有效预测药物与疾病之间的相互作用，还能够在很大程度上减少传统药物发现方法所需的时间和成本。相比现有的方法，该框架在预测药物再利用潜力方面表现出色，同时提供了高度可解释的结果，这对于研究人员理解预测背后的机制至关重要。这项工作充分展示了多智能体系统在生物医学研究中的可扩展性及其推动药物再利用创新的能力。所提出的框架为更高效、更具成本效益的药物发现过程开辟了一条崭新的路径，为加速治疗性药物的开发奠定了坚实的基础。未来，随着更多数据的积累和技术的进步，这种多智能体驱动的药物再利用方法有望成为现代药物研发的核心工具之一，助力全球医疗健康事业的发展。

        相关论文：

        Yoshitaka Inoue, Tianci Song, Tianfan Fu, <a href="https://arxiv.org/abs/2408.13378" target="_blank">DrugAgent: Explainable Drug Repurposing Agent with Large Language Model-based Reasoning</a>, arXiv:2408.13378


        ### 代表性成果3：AI药物发现的自动代码代理

        ![DrugAgent2](DrugAgent2.png)

        近年来，大型语言模型（LLMs）的快速发展为加速药物发现过程开辟了全新的路径。然而，尽管这些模型展现出了巨大的潜力，但在将理论概念转化为实际应用方面，特别是在高度专业化的制药研究领域中，仍然存在许多未解决的关键挑战。这些问题限制了从业者充分利用最新的AI技术来推动药物研发的进展。为了解决这一问题，我们引入了一种名为DrugAgent的多智能体框架，旨在通过自动化机器学习（ML）编程来助力药物发现。DrugAgent的设计结合了领域专业知识，通过识别特定需求并开发领域专用工具，系统性地探索不同的方法以找到有效的解决方案。该框架不仅整合了制药行业的深度知识，还能够自动化处理复杂的机器学习任务，从而显著降低了药物研发的技术门槛。初步案例研究表明，DrugAgent具备克服当前LLMs在药物发现领域面临的主要局限性的能力，并朝着AI驱动的创新方向迈出了重要一步。例如，在药物吸收、分布、代谢、排泄和毒性（ADMET）预测任务中，DrugAgent能够从数据获取到性能评估实现端到端的机器学习编程流程。具体而言，它使用PAMPA数据集对药物吸收进行预测，最终选择表现最佳的模型。在这一过程中，随机森林模型取得了0.92的F1分数，展示了其卓越的预测能力。这表明DrugAgent不仅能够高效完成复杂的机器学习任务，还能确保结果的准确性和可靠性。DrugAgent的出现标志着药物发现领域的一次重大突破。它不仅解决了传统方法效率低下的问题，还通过智能化手段优化了整个研发流程。未来，随着更多功能的开发和完善，DrugAgent有望成为制药行业的重要工具，进一步推动AI技术在药物研发中的广泛应用。这一框架的成功实施将极大地缩短新药开发周期，降低研发成本，同时提高药物的安全性和有效性，为全球医疗健康事业带来深远影响。

        相关论文：

        Sizhe Liu, Yizhou Lu, Siyu Chen, Xiyang Hu, Jieyu Zhao, Tianfan Fu, Yue Zhao, <a href="https://arxiv.org/abs/2411.15692" target="_blank">DrugAgent: Automating AI-aided Drug Discovery Programming through LLM Multi-Agent Collaboration</a>, arXiv:2411.15692
---

科学大模型研究小组致力于以先进计算模拟跨学科推动药物研发、材料创新和能源优化，助力破解复杂科学难题。