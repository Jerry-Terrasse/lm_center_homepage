---
title: 医疗影像大模型研究小组
date: 1004-01-01 # to control the display order
# author: test
type: landing

design:
  # Section spacing
  spacing: '1rem'

sections:
  - block: markdown
    content:
      # title: 医疗影像大模型研究小组
      text: |
        ## 医疗影像大模型研究小组
  - block: collection
    id: members
    content:
      title: 团队成员
      filters:
        folders:
          - authors
        tag: med_prof
      count: 0
    design:
      view: people-grid
      columns: 4
  - block: markdown
    content:
      title: 重要成果简介
      text: |
        南京大学医疗影像大模型研究小组长期深耕医学影像智能领域，围绕大模型的高效训练和低成本微调，探索大模型在医学影像分割、辅助诊断、精准治疗等领域的前沿应用。面对医疗影像标注成本高昂的挑战，研究组专注于稀疏监督学习、数据高效利用和伪标签优化等方法，以减少对大规模人工标注的依赖，同时提升模型的泛化能力和稳健性。代表性成果如下：

        ### 代表性成果1：基础模型引导下的通用半监督3D医学图像分割框架
        ![SFR](sfr.png)

        通用视觉基础模型如SAM在完全监督的医学图像分割中表现出色，然而仍需要大规模高质量的医疗标注数据。为此，是否可以同时兼顾1）结合SAM的通用泛化性能，2）减少繁重复杂的标注成本，设计一个通用的半监督医学图像分割框架？通过观察，上述框架应该具有伪标签有效性、参数高效性和出色的兼容性。考虑这三点要素，本研究提出“拼接、微调和重新训练”三阶段框架（Stitching, Fine-tuning, Re-training, 简称SFR）。拼接模块在3D医学图像和预训练的自然图像之间进行了分辨率匹配。随后使用拼接后的图像来微调SAM，并指导训练小规模的3D半监督分割模型，最终保持与V-Net等传统分割器相同的参数规模。SFR框架可轻松兼容各种流行的半监督方法。我们在多个数据集的中等标注（如20%的标注数据）下实现了与全监督非常接近的性能，稀缺标注（仅1个标注样本）下同样表现出显着改进。

        相关论文：

        <div>
          Shumeng Li, Lei Qi, Qian Yu, Jing Huo, Yinghuan Shi, Yang Gao. <a href="https://arxiv.org/abs/2403.11229">Stitching, Fine-tuning, Re-training: A SAM-enabled Framework for Semi-supervised 3D Medical Image Segmentation</a>. on TMI 2025.

          <div class="flex flex-wrap space-x-3">
            <a href="https://github.com/ShumengLI/SFR" target="_blank"><img src="/lm/images/github.svg" class="inline-block" style="height: 1.5em"></img></a>
          </div>
        </div>

        ### 代表性成果2：基础模型引导下的通用弱监督医学图像分割框架
        ![WeakMedSAM](weakmedsam.png)

        大多数将视觉基础模型如SAM适应到医疗影像任务的方法依赖大量的标记数据，而弱监督分割范式只使用类别标签，可以大大降低标注压力。然而，SAM对于医学图像中普遍存在的共现现象缺乏有效的处理机制，并且现有的弱监督分割方法对于类激活图的细化，无法充分利用SAM既有的参数和能力。为了解决这个问题，本研究提出了一种基于SAM的弱监督医学图像分割框架WeakMedSAM。WeakMedSAM具有两个关键组成部分：子类探索（SCE）模块和提示词亲和力挖掘（PAM）模块。SCE模块通过将主类别划分为多个子类别，显式学习类内表征，缓解共现现象带来的干扰。PAM模块则利用SAM的提示能力以获得亲和力关系，在不引入额外训练和参数开销的前提下，有效整合结构信息并优化类激活图。在三个基准数据集的广泛评估中，WeakMedSAM显著优于现有的弱监督分割方法。

        相关论文：

        <div>
          Haoran Wang, Lian Huai, Wenbin Li, Lei Qi, Xingqun Jiang, Yinghuan Shi. <a href="https://arxiv.org/abs/2503.04106">WeakMedSAM: Weakly-Supervised Medical Image Segmentation via SAM with Sub-Class Exploration and Prompt Affinity Mining</a>. on TMI 2025.

          <div class="flex flex-wrap space-x-3">
            <a href="https://github.com/wanghr64/WeakMedSAM" target="_blank"><img src="/lm/images/github.svg" class="inline-block" style="height: 1.5em"></img></a>
          </div>
        </div>

        ### 代表性成果3：基础模型与传统模型的自适应协同训练框架
        ![SynFoC](synfoc.png)

        基础分割模型在多种医学分割任务中展现出卓越的零镜头泛化能力，并可迁移至不同下游任务以提升特定垂直领域的表现。然而，在标注数据有限且存在领域偏移的场景下，微调基础模型往往面临高置信度误判的挑战，错误难以自我纠正，导致累积偏差。本研究提出了一种基于传统模型引导的协同训练范式，使基础模型在自训练过程中获得更可靠的伪标签优化。核心机制包括：1) Self-Mutual Confidence（SMC）动态评估模块，自适应调整基础模型与传统模型在不同训练阶段的主导地位——基础模型依赖传统模型的稳健性提升伪标签质量，同时避免传统模型在训练早期过拟合有限标注数据；2) Consensus-Divergence Consistency Regularization（CDCR），通过共识-分歧一致性约束强化两模型的协同表征学习。实验结果表明，所提出的方法在四个公开数据集上的表现均优于现有其他方法。

        相关论文：

        <div>
          Qinghe Ma, Jian Zhang, Zekun Li, Lei Qi, Qian Yu, Yinghuan Shi. <a href="https://cvpr.thecvf.com/virtual/2025/poster/33861">Steady Progress Beats Stagnation: Mutual Aid of Foundation and Conventional Models in Mixed Domain Semi-Supervised Medical Image Segmentation</a>. on CVPR 2025.

          <div class="flex flex-wrap space-x-3">
            <a href="https://github.com/MQinghe/SynFoC" target="_blank"><img src="/lm/images/github.svg" class="inline-block" style="height: 1.5em"></img></a>
          </div>
        </div>
---

南京大学医疗影像大模型研究小组长期深耕医学影像智能领域，围绕大模型的高效训练和低成本微调，探索大模型在医学影像分割、辅助诊断、精准治疗等领域的前沿应用。面对医疗影像标注成本高昂的挑战，研究组专注于稀疏监督学习、数据高效利用和伪标签优化等方法，以减少对大规模人工标注的依赖，同时提升模型的泛化能力和稳健性。