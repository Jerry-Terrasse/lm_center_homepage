---
title: "近期研究进展：神经符号融合的自动化形式证明"
summary: "南京大学软件所团队围绕基础软件系统自动化形式证明开展系列研究，提出神经符号融合证明生成框架，并在seL4定理证明和分布式协议安全性证明中取得重要进展。"
date: 2026-06-03
authors:
  - admin
tags:
  - research_progress
  - formal_verification
  - software_engineering
image:
  filename: cover_deal.jpg
---

正如 Bjarne Stroustrup 所说，“软件承载我们的文明”。保证大规模软件的绝对正确性，是信息化社会可靠运行的基石，也是软件工程的“圣杯”级梦想。形式化证明凭借其数学意义上的严密性，是通向这一梦想的有效途径。然而，其极高的人力成本却成为横亘在理想与现实之间一道难以逾越的鸿沟。例如，对于一个不到一万行源码的操作系统内核 seL4 的验证工作消耗了 11+ 人年[1]；对两个真实分布式系统 IronRSL 和 IronKV 的端到端验证花费了 3.7 人年[2]。面对如此高昂的代价，证明自动化成为了迫切需求。

近期大模型技术的进步为解决这一问题带来了曙光。南京大学软件所团队针对基础软件系统的自动化形式证明问题开展了一系列研究。其中，基于神经符号融合（Neuro-Symbolic）的证明生成框架大幅提升了证明生成的自动化水平：仅仅依靠本地微调的 7B 模型，将 seL4 相关定理的证明自动生成的成功率提高了接近一倍（40.3% -> 77.6%）。该工作已被 OSDI 2026 接收。而在分布式协议的安全性自动证明方面，实现了“自动生成归纳不变式-> 自动书写 TLAPS 证明-> 证明协议安全性质”的自动化框架，已经可以借助通用大模型完成 MongoLoglessDynamicRaft 这种工业级分布式协议的全自动证明，证明长度达到 6000 多行。

------------------------------------------------------------------------

### 01 本地可部署的轻量级解决方案证出了 77% 的 seL4 定理

在面向工业级操作系统内核 seL4 的自动化形式验证中，大语言模型展现出数学推理与代码生成的巨大潜力，但也暴露出明显短板：容易产生逻辑幻觉，或生成不符合交互式定理证明器（ITP）严格语法与语义规则的步骤。尤其在步骤较多、复杂度较高的证明中，完全依赖 LLM 预测的步骤序列往往会在中途出错。

为了解决上述问题，团队提出了一种神经符号融合的证明生成框架，核心理念十分简单：不让 LLM 单打独斗，而是让它与 ITP 深度协同。具体而言，LLM 作为启发式生成器，根据当前证明状态预测下一步候选步骤；ITP 立即验证每一步的正确性，并提供错误修复、冗余过滤、分支自动化收尾等强大支持。这不再是“一次性生成完整证明”的豪赌，而是一个“生成—校验—修复—反馈”的智能闭环。

![图1: 基于神经符号融合的证明生成框架](paper01.jpg)

图1: 基于神经符号融合的证明生成框架

实验结果表明，仅依靠本地微调的 7B 模型，该框架将 seL4 上证明自动生成的成功率提高了近一倍—— 从 40.3% 提升至 77.6%。

### 02 端到端证明框架写出了6000 行TLAPS 证明

团队在分布式协议的安全性自动证明方面也取得了进展。分布式协议运行在一个由成百上千节点组成、网络可能任意延迟或分区、部分节点可能崩溃甚至恶意伪造消息的环境中，一个安全性漏洞就足以引发历史分叉、状态回滚乃至整个共识层面的崩塌。值得警惕的是，不少经过人工证明、甚至经过 TLC 有限规模检验的分布式协议，后来仍被发现存在错误。因此，针对分布式协议安全性的定理证明尤为必要。

然而，这一任务极具挑战：协议交互逻辑复杂，状态空间爆炸，关键归纳不变式往往需要反复试错才能找到。例如，Basilisk 提到，IronFleet 曾花费数月时间才证明 Multi-Paxos 的归纳不变式[3]；而 IronFleet 对两个真实分布式系统的端到端验证，总投入约为 3.7 人年[2]。

为此，团队实现了“自动生成归纳不变式→ 自动书写 TLAPS 证明→ 证明协议安全性质”的自动化框架。其技术路径包括：1）首先借助神经符号融合的手段将大模型与经典的 IC3 算法有机结合，获取分布式协议归纳不变式，2）并在此基础上进一步借助 agentic harness，实现 TLAPS 证明脚本的自动化生成。这里值得强调的一点是：TLAPS 证明部分没有插入任何协议特定的人工提示或手写 lemma。Agent 看到的是协议、归纳不变式、证明目标和通用证明反馈；之后，它通过反复推进 proof obligation，最终写出了完整证明。

![图2: TLAPS证明自动生成流程](paper02.png)

图2: TLAPS证明自动生成流程

以 MongoLoglessDynamicRaft 为例，它对应的是 MongoDB 工程师 William Schultz 等人提出、并在 MongoDB 中实现和部署的 logless dynamic reconfiguration 协议[4]。它包含动态配置、term、server state、配置传播等机制，已经足够媲美真实分布式协议证明中的结构复杂度。针对该协议，我们已经实现了其安全性的全自动证明。以下是完整的证明内容，共 6308 行TLAPS 代码，全部由 agent 生成。

### 03 未来已来：Verified Spec-driven Development (VSDD)

大模型能力的持续跃迁，正在重新定义形式化验证的边界。具备更长上下文窗口和更敏锐推理直觉的前沿模型，已经能够在了解工作流程的前提下自主调用外部工具进行探索。例如，Numina-Lean-Agent 结合Claude Code 实现了与Lean 定理证明器的自动交互，成功解决了Putnam 2025 竞赛的全部12 道题目[5]；在Agentic Proof Automation 这项工作中，研究者使用Claude Code 为一个具有14,000 行Lean 代码的算法生成证明，在所测评的189 个任务中，达到87% 的成功率（其中约16% 的任务需要人工干预完成）[6]。

可以预见，形式化验证正从学术象牙塔中走出，逐步融入日常软件开发的主航道。未来，开发者或许只需清晰描述系统行为与约束，便能自动获得可证明的软件实现；而每一次代码变更，都能实时得到数学级别的正确性保障。

参考文献：

[1] Klein, Gerwin, et al. "seL4: Formal verification of an OS kernel."*Proceedings of the ACM SIGOPS 22nd symposium on Operating systems principles*. 2009.

[2] C. Hawblitzel, J. Howell, M. Kapritsos, J. R. Lorch, B. Parno, M. L. Roberts, S. Setty, and B. Zill, “IronFleet: Proving Practical Distributed Systems Correct,” in*Proceedings of the 25th Symposium on Operating Systems Principles (SOSP 2015)*, pp. 1–17, 2015. doi: 10.1145/2815400.2815428.

[3] T. N. Zhang, K. Singh, T. Chajed, M. Kapritsos, and B. Parno, “Basilisk: Using Provenance Invariants to Automate Proofs of Undecidable Protocols,” in*19th USENIX Symposium on Operating Systems Design and Implementation (OSDI 2025)*, 2025.

[4] W. Schultz and S. Zhou, “Rapid Prototyping A Safe, Logless Reconfiguration Protocol For MongoDB With TLA+,”*MongoDB Technical Blog*. https://www.mongodb.com/company/blog/technical/rapid-prototyping-safe-logless-reconfiguration-protocol-mongodb-tla-plus

[5] Liu, Junqi, et al. "Numina-Lean-Agent: An Open and General Agentic Reasoning System for Formal Mathematics."*arXiv preprint arXiv:2601.14027* (2026).

[6] Xu, Yichen, and Martin Odersky. "Agentic Proof Automation: A Case Study."*arXiv preprint arXiv:2601.03768* (2026).

<a href="https://mp.weixin.qq.com/s/ZAUnN5HRdPGvVQtlGgFrJA" target="_blank">查看原文</a>
