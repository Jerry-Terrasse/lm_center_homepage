---
title: "CVPR 2026 Accepted Papers"
summary: "The Large Model Center at the School of Computer Science, Nanjing University has 12 papers accepted by CVPR 2026, covering generated video realism evaluation, video temporal grounding, audio-video generation, video pretraining, diffusion models, robot learning, multimodal reasoning, and visual recognition."
date: 2026-05-05
authors:
  - admin
tags:
  - accepted_papers
  - conference
  - computer_vision
image:
  filename: cover_deal.jpg
---

CVPR (IEEE/CVF Conference on Computer Vision and Pattern Recognition) is one of the most influential international conferences in artificial intelligence, focusing on frontier research in computer vision, pattern recognition, and related AI areas. According to Google Scholar Metrics 2025, CVPR ranks No. 2 among all English-language journals and conferences worldwide, second only to Nature, and No. 1 in the Engineering & Computer Science category.

The Large Model Center at the School of Computer Science, Nanjing University has 12 papers accepted by CVPR 2026.

---

### 01

**Title**: VideoRealBench: A Chain-of-Thought Realism Evaluation Benchmark for Generated Human-Centric Videos

**Authors**: Min Yang, Xinwen Zhang, Jialei Tang, Xin Zhou, Kehan Li, Zeyi Huang, Limin Wang

**Affiliations**: Nanjing University; Huawei Central Media Technology Institute; Shanghai AI Laboratory

**Paper Summary**:

With the rapid development of video generation models, content creators and researchers increasingly use these technologies to produce human-centric videos at scale for content creation and customized data generation. Although current video generation models can produce videos with high visual quality, their limited understanding of realism often leads to generated content that lacks authenticity. Existing evaluators for generated video quality are commonly trained on low-quality generated videos and annotations, causing their scores to deviate from human preferences. They also often lack interpretability because they do not provide chain-of-thought-style reasoning. To address these issues, this work proposes VideoRealBench, a comprehensive benchmark for evaluating the realism of human-centric generated videos. The authors design a human-preference-based scoring system and provide three-step reasoning evidence for each score. Based on this design, they construct the carefully annotated VideoRealDataset and introduce VideoRealEval, an evaluator that provides both reliable scores and detailed reasoning. On VideoRealDataset, VideoRealEval achieves a PLCC of 57.07% and an SROCC of 56.78%, showing stronger alignment with human preferences than existing evaluators.

### 02

**Title**: TimeLens: Rethinking Video Temporal Grounding with Multimodal LLMs

**Authors**: Jun Zhang, Teng Wang, Yuying Ge, Yixiao Ge, Xinhao Li, Ying Shan, Limin Wang

**Affiliations**: Nanjing University; Tencent; Shanghai AI Laboratory

**Paper Summary**:

Video Temporal Grounding (VTG) is a core capability in video understanding. Rather than introducing an entirely new task-specific method, this work builds a direct, progressive, and strong baseline for VTG. Although multimodal large language models (MLLMs) have performed well on many video understanding tasks, systematic studies on how to optimize them for VTG remain limited. TimeLens studies this problem from two key dimensions: data quality and algorithm design. First, the authors reveal serious data-quality issues in existing VTG benchmarks and introduce TimeLens-Bench, a high-quality evaluation set produced by carefully re-annotating three mainstream benchmarks under strict standards. Their analysis shows that model rankings can change significantly under the revised benchmarks, indicating that previous evaluation protocols are unreliable. They also build TimeLens-100K, a large-scale high-quality training set through automatic re-annotation of noisy training data. On top of this, the work explores key algorithmic principles for VTG, including interleaved textual encoding for temporal representation, a thinking-free RLVR training paradigm, and a carefully designed RLVR recipe. These components lead to the TimeLens model family, which reaches state-of-the-art VTG performance among open-source models and even surpasses frontier closed-source models such as GPT-5 and Gemini-2.5-Flash. Code, data, and models will be released to support future research.

### 03

**Title**: UniAVGen: Unified Audio and Video Generation with Asymmetric Cross-Modal Interactions

**Authors**: Guozhen Zhang, Zixiang Zhou, Teng Hu, Ziqiao Peng, Youliang Zhang, Yi Chen, Yuan Zhou, Qinglin Lu, Limin Wang

**Affiliations**: Nanjing University; Tencent Hunyuan; Shanghai Jiao Tong University; Renmin University of China; Tsinghua University; Shanghai AI Laboratory

**Paper Summary**:

Existing open-source audio-video generation methods often lack effective cross-modal modeling, leading to weak lip synchronization and insufficient semantic consistency. This work proposes UniAVGen, a unified framework for joint audio and video generation. UniAVGen uses a dual-branch joint synthesis architecture and two parallel diffusion Transformers (DiTs) to construct a unified cross-modal latent space. Its core component is an asymmetric cross-modal interaction mechanism, which supports bidirectional and temporally aligned cross-attention to ensure precise spatiotemporal synchronization and semantic consistency. The framework further enhances cross-modal interaction through a face-aware modulation (FAM) module that dynamically weights visually salient regions. To improve generation fidelity at inference time, the authors introduce modality-aware classifier-free guidance (MA-CFG), which explicitly strengthens cross-modal association signals. UniAVGen can support audio-video joint generation, audio-video continuation, video-to-audio dubbing, audio-driven video synthesis, and other tasks within a single model. Experiments show that even with far fewer training samples than existing methods (1.3 million vs. 30.1 million), UniAVGen achieves strong advantages in audio-video synchronization, timbre consistency, and emotional consistency.

### 04

**Title**: InternVideo-Next: Towards World Understanding Video Models

**Authors**: Chenting Wang, Yuhan Zhu, Yicheng Xu, Jiange Yang, Ziang Yan, Yali Wang, Yi Wang, Limin Wang

**Affiliations**: Shanghai Jiao Tong University; Shanghai AI Laboratory; Shanghai Innovation Institute; Shenzhen Institute of Advanced Technology, Chinese Academy of Sciences; Nanjing University

**Paper Summary**:

Large-scale video-text pretraining has achieved strong performance, but it often relies heavily on noisy synthetic text and overlooks implicit physical-world knowledge such as object motion, 3D geometry, and physical cues. At the same time, masked video modeling methods that directly use spatiotemporal structure often underperform on general tasks because pixel-level reconstruction conflicts with high-level semantics or latent-space prediction encourages shortcut learning. To address these architectural issues, the authors propose InternVideo-Next, a two-stage video-only pretraining architecture for physical-world understanding. The method decouples the traditional encoder-decoder architecture into an encoder-predictor-decoder (EPD) framework, where the predictor acts as a latent world model. In the first stage, it uses a conditional diffusion decoder and reliable image-level semantic priors to build a latent space that preserves both semantics and low-level details. In the second stage, it learns world knowledge by predicting frozen target features in this latent space, mitigating shortcut learning. Experiments show that with only public unlabeled video data for pretraining, InternVideo-Next achieves state-of-the-art performance on benchmarks including action recognition, fine-grained motion, depth estimation, and object tracking. It is also the first video-only model to surpass image-text pretrained models on Kinetics-400 and SSv2 without explicit video-text supervision, offering an efficient and scalable path for general video representation learning.

### 05

**Title**: DDT: Decoupled Diffusion Transformer

**Authors**: Shuai Wang, Zhi Tian, Weilin Huang, Limin Wang

**Affiliations**: Nanjing University; ByteDance

**Link**: https://arxiv.org/abs/2504.05741

**Paper Summary**:

Diffusion Transformers achieve excellent generation quality but require many training iterations and numerous inference steps. At each denoising step, a Diffusion Transformer encodes noisy inputs to extract low-frequency semantic features and then decodes high-frequency information with modules of the same structure. This architecture contains an inherent optimization conflict: low-frequency semantic encoding suppresses high-frequency features, creating a trade-off between semantic encoding and high-frequency decoding. This paper proposes the Decoupled Diffusion Transformer (DDT), which uses a dual-branch design with a dedicated condition encoder for semantic feature extraction and an independent velocity decoder for high-frequency reconstruction. Experiments show that increasing encoder capacity brings consistent gains as the model scales. On ImageNet at 256x256 resolution, DDT-XL/2 achieves an FID of 1.31, setting a new state of the art and improving training convergence speed by nearly 4x over existing Diffusion Transformers. At 512x512 resolution, DDT-XL/2 further achieves an FID of 1.28. The decoupled architecture also enables self-conditioning information reuse across adjacent denoising steps, substantially accelerating inference. To minimize performance loss, the paper introduces a statistical dynamic programming strategy to solve the optimal information-reuse schedule.

### 06

**Title**: TempR1: Improving Temporal Understanding of MLLMs via Temporal-Aware Multi-Task Reinforcement Learning

**Authors**: Tao Wu, Li Yang, Gen Zhan, Yabin Zhang, Yiting Liao, Junlin Li, Deliang Fu, Li Zhang, Limin Wang

**Affiliations**: Nanjing University; ByteDance; Shanghai AI Laboratory

**Paper Summary**:

Improving the temporal understanding ability of multimodal large language models (MLLMs) is essential for long-video analysis and supports tasks such as temporal grounding and time-sensitive video question answering. Existing reinforcement learning methods for temporal reasoning are often limited to specific tasks or datasets and cannot satisfy different temporal understanding requirements across scenarios. This paper proposes TempR1, a reinforcement learning-based multi-task training method for temporal understanding in MLLMs. It builds a multi-task corpus covering diverse temporal structures and uses Group Relative Policy Optimization (GRPO) for stable cross-task optimization. TempR1 further divides temporal tasks into three interval-instance correspondence types and designs tailored localization reward functions for each type, enabling the model to capture fine-grained temporal dependencies and adapt to different temporal patterns. Extensive experiments show that TempR1 achieves leading performance across multiple benchmarks for five temporal understanding tasks. Joint optimization across complementary tasks produces clear synergistic effects, improving model generalization and single-task performance, and provides a scalable paradigm for enhancing temporal reasoning in MLLMs.

### 07

**Title**: VMonarch: A Sub-Quadratic Attention Mechanism for Video Diffusion Transformers

**Authors**: Cheng Liang, Haoxian Chen, Liang Hou, Qi Fan, Gangshan Wu, Xin Tao, Limin Wang

**Affiliations**: Nanjing University; Kling Team, Kuaishou

**Paper Summary**:

The quadratic complexity of attention severely limits the context length of Video Diffusion Transformers (Video DiTs). The authors observe that the highly sparse spatiotemporal attention patterns in Video DiTs can be naturally represented by Monarch matrices, a class of structured matrices with flexible sparsity that enable sub-quadratic attention computation through alternating minimization. Based on this insight, they propose VMonarch, a new attention mechanism for Video DiTs that uses structured Monarch matrices to compute dynamic sparse patterns efficiently. The method includes a spatiotemporal Monarch decomposition to explicitly capture intra-frame and inter-frame correlations, a recomputation strategy to mitigate artifacts caused by instability during alternating minimization, and an online entropy algorithm fused into FlashAttention for fast Monarch matrix updates in long-sequence settings. Experiments show that after only limited tuning, VMonarch reaches comparable or better generation quality than full attention on VBench. It breaks the attention bottleneck of Video DiTs, reducing attention FLOPs by 17.5x, accelerating long-video attention by more than 5x, and outperforming state-of-the-art sparse attention methods at 90% sparsity.

### 08

**Title**: CoMo: Learning Continuous Latent Motion from Internet Videos for Scalable Robot Learning

**Authors**: Jiange Yang, Yansong Shi, Haoyi Zhu, Mingyu Liu, Kaijing Ma, Yating Wang, Gangshan Wu, Tong He, Limin Wang

**Affiliations**: Nanjing University; Shanghai AI Laboratory

**Paper Summary**:

This paper proposes CoMo, a framework for unsupervised learning of continuous latent motion representations from large-scale Internet videos. Existing discretization-based methods often lose fine-grained motion information and are inconsistent with the continuous distribution of robot actions, hindering unified policy learning. CoMo addresses these issues with an early temporal differencing mechanism and a temporal contrastive learning strategy. Together, they improve the model's ability to avoid shortcut learning, focus the extracted latent motion representations on meaningful foreground motion regions, and strengthen motion cues. CoMo also shows strong zero-shot generalization by generating effective pseudo action labels for unseen videos without action annotations. Its continuous latent motion representations align naturally with the continuous distribution of real robot actions, benefiting unified policy learning. Extensive simulation and real-robot experiments show that adding CoMo pseudo-labeled video data to joint training significantly improves robot policy performance across many manipulation tasks. Overall, CoMo provides a unified and more precise action-labeling solution for large-scale heterogeneous video data and offers an efficient path toward general and scalable robot policy learning.

### 09

**Title**: AV-Reasoner: Improving and Benchmarking Clue-Grounded Audio-Visual Counting for MLLMs

**Authors**: Lidong Lu, Guo Chen, Wei Zhu, Zhiqi Li, Yicheng Liu, Tong Lu

**Affiliations**: Nanjing University; China Mobile Zijin Innovation Institute

**Link**: https://arxiv.org/abs/2506.05328; https://av-reasoner.github.io/

**Paper Summary**:

Although multimodal large language models have made significant progress in image captioning, video question answering, and audio-video understanding, they still struggle with counting, especially in long videos that require fine-grained object recognition, spatiotemporal localization, cross-modal alignment, and de-duplication across multiple instances. Existing video counting benchmarks typically involve short scenarios, limited question forms, insufficient explainable clue annotations, and weak audio-video joint evaluation, making it difficult to assess whether models truly have interpretable counting reasoning ability. This work introduces CG-AV-Counting, a manually annotated benchmark for long-video audio-visual counting. It contains 497 real long videos, 1,027 multimodal counting questions, and 5,845 fine-grained clues covering events, objects, and attributes. The authors further propose AV-Reasoner, which improves perception, localization, and reasoning through cold-start supervised fine-tuning, curriculum reinforcement learning, staged review, and full-task reinforcement learning under limited counting annotations. Experiments show that mainstream multimodal models still lag far behind humans on long-video counting, while AV-Reasoner achieves significant improvements across counting and audio-video understanding benchmarks, providing a new benchmark and method for fine-grained multimodal reasoning and interpretable video counting.

### 10

**Title**: Will Mutimodal Models Be Dazzled by Muti-Image Visual Puzzles?

**Authors**: Zhi Zhu, YaoQi Fan, Zhe Chen, Yue Cao, Yangzhou Liu, Tong Lu

**Affiliations**: Nanjing University

**Paper Summary**:

With the rapid development of multimodal large language models (MLLMs), the limitations of existing benchmarks in evaluating complex reasoning across multiple images have become increasingly clear. To fill this gap, this work introduces MIRACLE, a benchmark designed for evaluating complex multi-image reasoning and logical understanding. MIRACLE contains 4,000 high-quality items spanning visual comparison, temporal analysis, spatial relationships, and other reasoning dimensions. Its key strength lies in its strict emphasis on inter-image dependency. Through systematic data collection, careful instance grouping, and targeted question design, the benchmark forces models to solve tasks through cross-image logical integration rather than single-image recognition. Experiments show that current leading MLLMs, such as Gemini-2.5-Pro, score only 55.91% on MIRACLE, highlighting the difficulty of multi-image reasoning. The study further finds that all tested models suffer substantial performance drops in high-density visual information scenarios, such as puzzle tasks and ultra-many-image inputs. These results reveal shortcomings of current MLLMs in handling complex structural relationships and collaborative reasoning under high visual load. MIRACLE provides a new evaluation dimension and may help push multimodal reasoning beyond current boundaries.

### 11

**Title**: Bayesian Decomposition and Semantic Completion for Few-shot Semantic Segmentation

**Authors**: Guangchen Shi, Yirui Wu, Zhu Wei, Tao Wang, Hao Zhang, Bo Li, Tong Lu

**Affiliations**: Nanjing University; Hohai University; China Mobile Zijin Innovation Institute; VIVO

**Paper Summary**:

Few-shot semantic segmentation (FSS) aims to segment objects of novel categories using only a small number of annotated examples. Existing methods often depend on complex class-specific modeling, which makes training costly and limits generalization under few-shot conditions. To address these challenges, the authors propose a Bayesian probabilistic network (BPNet), which reformulates FSS as the combination of three interpretable components: a prior, a likelihood, and a category-consistency term. Specifically, the method uses efficient SAM to generate fragmented prior regions for the query image, while both the likelihood and consistency terms are estimated by a lightweight class-agnostic localization module (CALM). CALM uses a binary classification head to predict category consistency between support and query images and estimates the likelihood term by localizing target regions in the support image. By evaluating fragmented regions generated by SAM in parallel, CALM can efficiently identify core class regions and turn segmentation into a simple binary classification task. To address the semantic incompleteness of SAM-generated regions, the authors introduce an attention-based semantic completion module (SCM), which uses local and global context cues to integrate fragmented regions into semantically complete masks. Extensive experiments show that BPNet achieves state-of-the-art performance while maintaining efficient segmentation.

### 12

**Title**: Rethinking BCE Loss for Multi-Label Image Recognition with Fine-Tuning

**Authors**: Ao Zhou, Zhiwei Jiang, Zifeng Cheng, Cong Wang, Yafeng Yin, Shufan Yang, Qing Gu

**Affiliations**: Nanjing University

**Paper Summary**:

In multi-label image recognition, the authors find that when visual-language models are fine-tuned with binary cross-entropy loss, model confidence becomes systematically distorted: predictions for base classes seen during training are overly conservative, while predictions for unseen novel classes are overly confident. Existing calibration methods cannot adequately solve this issue. The paper proposes Class-wise Covariance Regularization (CCR), which uses a large number of negative samples to construct a prediction covariance matrix and aligns it with the semantic correlations of text embeddings, thereby preserving the stability of inter-class geometry during fine-tuning. CCR not only significantly improves confidence reliability but also improves recognition and calibration for head, tail, and novel classes. The method is plug-and-play and compatible with existing fine-tuning frameworks, including prompt fine-tuning and adapter fine-tuning. It has important application value in real-world scenarios requiring trustworthy predictions, such as medical imaging and autonomous driving.

<a href="https://mp.weixin.qq.com/s/Ot6MLBd5puXoIj7j0EjRAg" target="_blank">View original</a>
