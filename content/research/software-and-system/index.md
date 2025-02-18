---
title: 大模型软件与系统研究小组
date: 1010-01-01 # to control the display order
# author: test
type: landing

design:
  # Section spacing
  spacing: '1rem'

sections:
  - block: markdown
    content:
      # title: 多模态大模型研究小组
      text: |
        ## 大模型软件与系统研究小组
  - block: collection
    id: members
    content:
      title: 团队成员
      filters:
        folders:
          - authors
        tag: soft_prof
      count: 0
    design:
      view: people-grid
      columns: 4
  - block: markdown
    content:
      title: 重要成果简介
      text: |
         南京大学大模型软件与系统研究小组(DeepEngine)围绕基于大模型的系统构建、规模化训练/推理部署以及大模型应用开展研究，为大模型的高效训练、部署、以及领域知识融入等关键挑战开展研究；在大模型应用方面重点关注如自动定理证明(Automated Theorem Proving, ATP)等重推理(reasoning)任务的研究，有着深厚的积累。在本科教育方面，开设大模型开发课程，培养学生“从零到一手搓大模型”的能力。小组代表性成果如下：

         ### 代表性成果1：面向大语言模型的领域知识模块可组装融合推理（MeteoRA） 

         ![MeteoRA](./meterora.png)

         本研究提出了一种创新的MoE-style LoRA组装框架MeteoRA，通过模块化设计实现大语言模型（LLM）对多领域知识的高效融合与动态适配。框架将LLM视为主机平台，支持即插即用第三方知识模块（LoRA适配器），仅需通过少量样本微调门控网络，即可使LLM根据输入内容自感知切换适配的知识模块，实现"安装驱动即可融合知识"的灵活扩展。在28个LoRA模块融合的场景中，MeteoRA无需人工指定激活LoRA模块，可自动选择合适的模块用于推理。结合MeteoRA可使LLM推理准确率显著优于现有方法。针对MoE推理效率问题，该研究设计了基于PyTorch和Triton的两级优化算子，可将28-LoRA的MoE推理时延压缩至传统方法的1/5。特别地，在模拟复杂考试场景的N-混合任务生成中（LLM一次性依次作答N道题，每题需激活对应的知识模块），本方法通过2-shot提示模板实现逐题模块切换的状态下单次推理完成全流程。相比基线方法在答题数量与正确率上分别提升35%和27%，展现了工业级多任务场景的强适配能力。

         #### 相关论文

         <div>
            Jingwei Xu, Junyu Lai, Yunpeng Huang, <a href="https://arxiv.org/abs/2405.13053">MeteoRA: Multiple-tasks Embedded LoRA for Large Language Models</a>, in ICLR 2025.
            <div class="flex flex-wrap space-x-3">
               <a><img src="/images/links.svg" class="inline-block" style="height: 1.25em"></a>
               <a href="https://github.com/NJUDeepEngine/meteora" target="_blank"><img src="/images/github.svg" class="inline-block" style="height: 1.5em"></img></a>
            </div>
         </div>
         <br>

         ### 代表性成果2：基于图灵机机理的大语言模型计算推理执行框架
         ![](turing_ft.png)
         大型语言模型 （LLM） 在各种自然语言处理和推理任务中表现出卓越的能力，某些应用场景甚至超越了人类的表现。然而，这类模型在最基础的算术问题的表现上却不尽如人意。当遇到算术问题时，LLM 通常依赖记住特定的表达式及其对应结果的方式输出算术问题的结果。通过简单的实验发现，LLM只在语言层面表达了对算术运算的逻辑理解，但并没有运用计算逻辑解决算术问题，这对LLM在相关领域中的应用造成了重大障碍，同时影响了其推广到新场景的能力。

         为了解决这个问题，本研究提出了一种面向LLM的可组装算术执行框架 （CAEF），使 LLM 能够通过模仿图灵机的方式来执行算术，从而理解计算逻辑。此外，CAEF具有高度的可扩展性，允许组合已经学习到的运算符，以降低复杂运算符的学习难度。评估表明，LlaMA 3.1-8B 模型配合CAEF可在 7 种经典数学算术运算的测试中实现了近乎 100% 的准确率，且能够支撑100 位操作数的计算，而同等难度下， GPT-4o 在一些算术问题测试中无法给出正确的计算结果。

         #### 相关论文

         <div>
            Junyu Lai and Jiahe Xu and Yao Yang and Yunpeng Huang and Chun Cao and Jingwei Xu, <a href="https://arxiv.org/abs/2410.07896">Executing Arithmetic: Fine-Tuning Large Language Models as Turing Machines</a>, arXiv: 2410.07896
            <div class="flex flex-wrap space-x-3">
               <a><img src="/images/links.svg" class="inline-block" style="height: 1.25em"></a>
               <a href="https://github.com/NJUDeepEngine/CAEF" target="_blank"><img src="/images/github.svg" class="inline-block" style="height: 1.5em"></img></a>
            </div>
         </div>
         <br>
         
         ### 代表性成果3：南京大学选修课-大语言模型应用开发

         ![](teaching.png)

         本课程为南京大学计算机学院本科选修课，于2024年秋季学期首次开课，讲师为徐经纬，助教为黄云鹏和狄农雨。该课程以Transformer-based Causal LM为学习对象，基于PyTorch和Huggingface的Transformers框架从零开始构建可加载开源LlaMA模型的代码项目。在此课程中，将了解大语言模型最新的实现细节，如RoPE、RMSNorm及其变体、Sparse-MoE、各类Attention实现(包括FlashAttention系列)以及Megatron并行框架中Tensor Parallelism、Pipeline Parallelism、Context Parallelism和Sequence Parallelism的核心思路。

         <div class="flex flex-wrap space-x-3">
            <a><img src="/images/links.svg" class="inline-block" style="height: 1.25em"></a>
            <a href="https://paragonlight.github.io/llm-course/" target="_blank"><img src="/images/powerpoint.svg" class="inline-block" style="height: 1.7em"></img></a>
            <a href="https://www.bilibili.com/video/BV1GiHpePEx4/" target="_blank"><img src="/images/bilibili.svg" class="inline-block" style="height: 1.5em"></img></a>
            <a href="https://github.com/Strivin0311/llms-learning/tree/main/tutorial/assignment" target="_blank"><img src="/images/assignment.svg" class="inline-block" style="height: 1.7em"></img></a>
         </div>
---

大模型软件与系统研究小组致力于探索大模型与软件、系统之间的双向互动关系。一方面，我们研究如何利用大模型来优化和改进软件与系统的设计、开发、测试、验证与运维；另一方面，我们也关注如何设计和构建高效的软件与系统来支持大模型的训练、推理和部署。通过这两个方向的深度融合，我们旨在推动大模型与软件、系统的协同创新，为人工智能驱动的未来计算生态提供技术支撑。