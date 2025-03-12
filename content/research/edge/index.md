---
title: 端侧大模型系统研究小组
date: 1003-01-01 # to control the display order
# author: test
type: landing

design:
  # Section spacing
  spacing: '1rem'

sections:
  - block: markdown
    content:
      # title: 端侧大模型系统研究小组
      text: |
        ## 端侧大模型系统研究小组
  - block: collection
    id: members
    content:
      title: 团队成员
      filters:
        folders:
          - authors
        tag: edge_prof
      count: 0
    design:
      view: people-grid
      columns: 4
  - block: markdown
    content:
      title: 重要成果简介
      text: |
        大模型系统优化研究小组聚焦大模型系统前沿优化技术，围绕构建高精度、低延迟、可扩展的大模型服务框架核心目标，在大模型算子优化、自适应参数优化、多模态任务调度等方向开展系统性研究，取得如下代表性成果：

        ### 代表性成果1：端侧多模态大模型高效适配系统
        ![VaLoRA](valora.png)

        本成果基于LoRA技术，提出端侧大模型高效适配系统VaLoRA，以提升端侧多模态大模型（LMMs）在复杂视觉任务中的应用效率。VaLoRA通过三大技术创新实现精准高效处理：1）构建精度感知型LoRA适配器，结合外部知识优化端侧适配，以满足资源受限环境的精度需求；2）设计自适应分片批处理算子，实现异构适配器的高效并行计算，提升端侧推理效率；3）开发弹性调度机制，自适应优化请求分配，降低端侧设备的计算延迟。实验表明，VaLoRA在三类端侧LMMs上的五项视觉任务中，相比基线模型精度提升24-62%，相较最先进的LoRA系统响应延迟降低20-81%，有效支持图像描述、视觉问答、目标检测等应用，为端侧多模态模型在垂直领域的落地提供高效方案。

        相关论文：

        Liang Mi, Weijun Wang, Wenming Tu, Qingfeng He, Rui Kong, Xinyu Fang, Yazhu Dong, Yikang Zhang, Yunchun Li, Meng Li, Haipeng Dai, Guihai Chen, Yunxin Liu. <a href="https://arxiv.org/abs/2411.00915" target="_blank">V-LoRA: An Efficient and Flexible System Boosts Vision Applications with LoRA LMM</a>, in EuroSys 2025.


        ### 代表性成果2：端侧大模型关键区域增强视频分析系统
        ![Analytics](analytics.png)

        本研究针对端侧大模型的视频分析优化，提出了一种基于神经网络的关键区域增强系统，有效减少视频数据的空间冗余，并提升分析效率。系统包含三大核心技术：1）区域重要性预测器，快速识别关键区域，减少无关计算；2）区域感知增强模块，高效拼接稀疏区域并增强关键画面；3）智能执行调度，优化计算资源分配，提升推理效率。在五种异构边缘设备上的实验表明，该系统相比最先进的基于帧增强方法，准确性提升10-19%，吞吐量提高2-3倍，为端侧高效视频分析提供创新性解决方案。

        相关论文：

        Weijun Wang, Liang Mi, Shaowei Cen, Haipeng Dai, Yuanchun Li, Xiaoming Fu, Yunxin Liu. <a href="https://arxiv.org/abs/2407.16990" target="_blank">Efficient Neuro-enhanced Video Analytics</a>, in NSDI 2025.
---

大模型系统优化研究小组聚焦大模型系统前沿优化技术，围绕构建高精度、低延迟、可扩展的大模型服务框架核心目标，在大模型算子优化、自适应参数优化、多模态任务调度等方向开展系统性研究，取得如下代表性成果：