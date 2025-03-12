---
title: Edge Large Model System Research Group
date: 1003-01-01 # to control the display order
# author: test
type: landing

design:
  # Section spacing
  spacing: '1rem'

sections:
  - block: markdown
    content:
      # title: Edge Large Model System Research Group
      text: |
        ## Edge Large Model System Research Group
  - block: collection
    id: members
    content:
      title: Team Members
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
      title: Key Achievements
      text: |
        The Edge Large Model System Research Group focuses on frontier optimization techniques for large model systems. Centered on building a high-precision, low-latency, and scalable large model service framework, our research covers operator optimization, adaptive parameter tuning, and multimodal task scheduling. Our representative achievements include:

        ### Achievement 1: Efficient Adaptation System for Edge Multimodal Large Models
        ![VaLoRA](valora.png)

        Based on LoRA technology, we propose VaLoRA, an efficient adaptation system for edge multimodal large models (LMMs) aimed at complex visual tasks. VaLoRA achieves precise and efficient processing via three innovations: 1) a precision-aware LoRA adapter that incorporates external knowledge to optimize edge adaptation under resource constraints; 2) an adaptive sharding batch operator for efficient parallel computation of heterogeneous adapters, boosting inference speed; and 3) an elastic scheduling mechanism to optimize task distribution and reduce computation latency on edge devices. Experiments on three types of edge LMMs across five visual tasks show that VaLoRA improves accuracy by 24-62% relative to baseline models and reduces response latency by 20-81% compared to advanced LoRA systems, effectively supporting applications such as image captioning, visual Q&A, and object detection.

        Related Paper:

        Liang Mi, Weijun Wang, Wenming Tu, Qingfeng He, Rui Kong, Xinyu Fang, Yazhu Dong, Yikang Zhang, Yunchun Li, Meng Li, Haipeng Dai, Guihai Chen, Yunxin Liu. <a href="https://arxiv.org/abs/2411.00915" target="_blank">V-LoRA: An Efficient and Flexible System Boosts Vision Applications with LoRA LMM</a>, in EuroSys 2025.

        ### Achievement 2: Video Analysis System with Enhanced Key Regions for Edge Large Models
        ![Analytics](analytics.png)

        This study presents a neural network-based key region enhancement system for edge large model video analysis. The system effectively reduces spatial redundancy in video data and improves analysis efficiency. It consists of three core technologies: 1) a region importance predictor to rapidly identify key regions and minimize unnecessary computations; 2) a region-aware enhancement module that efficiently stitches sparse regions and enhances key frames; and 3) an intelligent scheduling mechanism that optimizes resource allocation to boost inference speed. Experiments on five heterogeneous edge devices demonstrate an accuracy improvement of 10-19% and a throughput increase of 2-3 times over state-of-the-art frame enhancement methods, offering an innovative solution for efficient video analysis on edge devices.

        Related Paper:

        Weijun Wang, Liang Mi, Shaowei Cen, Haipeng Dai, Yuanchun Li, Xiaoming Fu, Yunxin Liu. <a href="https://arxiv.org/abs/2407.16990" target="_blank">Efficient Neuro-enhanced Video Analytics</a>, in NSDI 2025.
---

The Edge Large Model System Research Group focuses on frontier optimization techniques for large model systems. Centered on building a high-precision, low-latency, and scalable large model service framework, our research covers operator optimization, adaptive parameter tuning, and multimodal task scheduling.