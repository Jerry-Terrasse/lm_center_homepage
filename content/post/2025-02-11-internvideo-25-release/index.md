---
title: 书生 InternVideo2.5 开源，万帧长视频准确“大海捞针”，精细感知真实时空关系
summary: 近日，上海人工智能实验室（上海AI实验室）联合南京大学、中科院深圳先进技术研究院共同开源视频多模态大模型书生InternVideo2.5。
date: 2025-02-11

authors:
  - admin
  - Ted

tags:
  - academia_news

image:
  filename: shlab.jpg
---

> 近日，上海人工智能实验室（上海AI实验室）联合南京大学、中科院深圳先进技术研究院共同开源视频多模态大模型书生InternVideo2.5。
> 在视频理解领域，全新升级的InternVideo2.5取得时间跨度与细粒度的双维提升，“记忆力”较前代模型扩容6倍，具备万帧长视频中精准“大海捞针”能力，AI视频理解既能“短平快”，亦可“长深细”。
> 让AI得以更准确“看懂”纷繁的真实世界，更为多领域应用注入新质生产力。书生InternVideo系列模型此前已应用于中央广播电视总台巴黎奥运会直播，准确定位运动员的得分瞬间及相关慢动作，显著提升电视节目编创效率。基于长视频理处理能力的增强，升级后的InternVideo2.5将为自动驾驶、监控安防、虚拟现实等应用提供更高效的AI技术支持。

开源链接：<a>https://github.com/OpenGVLab/InternVideo/tree/main/InternVideo2.5</a>
<br>论文链接：<a>https://arxiv.org/abs/2501.12386</a>
<br>Huggingface链接：<a>https://huggingface.co/OpenGVLab/InternVideo2_5_Chat_8B</a>

{{< video src="InternVideo2.5_demo.mp4" controls="yes" poster="cover.jpg">}}

### 专注精细时空理解，长视频高效感知

上海AI实验室持续布局视频多模态大模型（Video MLLM）技术探索，自2022年起，先后推出并开源通用视频基础模型书生InternVideo、视频理解大模型书生<a href="https://mp.weixin.qq.com/s?__biz=Mzg5NDc0MTUxMA==&mid=2247533491&idx=1&sn=cb9ac56e0e8aafa03f089d22305420bb">InternVideo2</a>及以对话为中心的视频理解新范式<a href="https://mp.weixin.qq.com/s?__biz=MzkzNzIyNDg4MQ==&mid=2247544884&idx=1&sn=34c6ea5e7a435a238f78177f95000a80&token=230509976&lang=zh_CN">VideoChat</a>。在视频基础视觉表征学习和多模态对话的技术积累上，全新升级InternVideo2.5专注于细微时空理解，将视觉感知和语言理解深度融合，实现了长视频理解能力突破。

**InternVideo2.5能力特征：**

- 超长视频处理:  万帧精确定位，视频处理长度较此前版本提升6倍（3000-10000帧）。
- 细粒度感知:  准确识别和定位视频中的物体、场景和动作，理解细微的时空关系。
- 多项视觉能力融合:  不仅能进行通用视频问答，还能完成目标跟踪、分割等专业视觉任务。

<div class="img-full-width">

![image](figure.jpg)

</div>

<span style="font-size: 0.8em; line-height: 0.2; color: rgb(136, 136, 136);">左图：InternVideo2.5与其它80亿参数开源模型在MVBench和VideoMME上的评测性能对比；右图：InternVideo2.5可准确对视频进行跟踪分析。</span>

### LRC结合渐进训练，破解长视频建模技术瓶颈
针对长视频和精细化视觉任务，传统视频多模态大模型面临显著技术瓶颈，难以在超长视频中准确追踪目标物体，或在复杂场景下识别细微的时空关系。以“万帧大海捞针”任务为例，传统方法需耗费大量计算资源，且定位精度不足，导致视频分析效率低下，限制了该类大模型在工业级场景中的应用。
为此，上海AI实验室联合团队基于自研的<a href="https://mp.weixin.qq.com/s?__biz=MzkzNzIyNDg4MQ==&mid=2247559641&idx=2&sn=f46a86df07b9ca5a0bdc13f30730e23f">书生·万象（InternVL2.5）</a>基座模型，提出长时丰富上下文建模（LRC）技术，为破解当前瓶颈提供了解题思路。

**长时丰富上下文建模技术 (LRC)两大核心模块：**

- 分层上下文压缩 (HiCo):  巧妙地利用长视频中视觉信息的冗余性，对视频内容进行分层压缩。实验结果显示，在HiCo的作用下，InternVideo2.5可在万帧视频中准确找到目标帧，在开源模型中综合领先。

- 任务偏好优化 (TPO): TPO通过将来自各种细粒度视觉任务（例如目标跟踪、分割、时间定位等）的标注信息，转化为可微分的任务偏好，指导模型自学习，将InternVideo能力拓展至各类专业视觉任务。


同时，联合团队以超过30万小时的视频语料，使用渐进式多阶段训练方案，对InternVideo2.5进行了预训练，保证其视频能力的获取。其中，训练语料涵盖视觉文本对齐数据、长视频数据和特定任务视觉数据类型，为模型学习提供丰富信息。延续书生·万象采用的渐进式多阶段训练方案，逐步提升模型的细粒度感知和时间理解能力：一阶段进行基础学习，实现任务识别指令调整和视频语言对齐训练；二阶段通过集成和训练特定任务组件以及视觉概念预训练，增强视觉理解能力；三阶段则在混合语料库上进行多任务训练和指令调整，优化所有模型组件。这一方案实现了模型“从小到大”、数据“从粗到精”的有效优化，使成本更低、性能更高。

<a href="https://mp.weixin.qq.com/s/kId4bxMbbR4kT2Q_HXCpsg" target="_blank">查看原文</a>