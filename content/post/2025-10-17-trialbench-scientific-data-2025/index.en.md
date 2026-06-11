---
title: "Scientific Data 2025 | TrialBench, the First Multimodal AI Platform for Clinical-Trial Prediction, Released"
summary: "TrialBench, jointly developed by teams from HKUST (Guangzhou), Nanjing University, Harvard, Stanford, IQVIA, and others, was published in Scientific Data as a multimodal dataset and toolkit for AI-based clinical-trial prediction."
date: 2025-10-17
authors:
  - admin
tags:
  - research_progress
  - healthcare_ai
  - dataset
image:
  filename: cover_deal.jpg
---

Clinical trials are a critical bridge from laboratory drug discovery to patient treatment, but the process is highly challenging: the average success rate is below 15%, timelines often exceed ten years, and costs can reach billions of dollars.

In September 2025, TrialBench, jointly developed by teams from HKUST (Guangzhou), Nanjing University, Harvard, Stanford, IQVIA, and other institutions, was formally published in Scientific Data, a Nature Portfolio journal. It is the world's first multimodal clinical-trial prediction dataset designed for AI.

![Image](paper01.png)

### Platform Value

TrialBench integrates 23 sub-datasets and covers eight core prediction tasks:

- Predicting trial duration
- Predicting patient dropout rate
- Predicting serious adverse events
- Predicting mortality events
- Predicting whether a trial will be approved
- Identifying failure reasons
- Automatically generating inclusion criteria
- Recommending reasonable dosage

![Summary of eight clinical-trial prediction tasks](paper02.png)

These tasks summarize eight key clinical-trial prediction problems.

### Technical Features

![TrialBench technical framework](paper03.png)

The platform integrates multi-source data and advanced AI techniques:

- Graph neural networks for drug molecular structures
- Bio-BERT for clinical text
- Hierarchical attention models for disease-code understanding

It also provides complete baseline models, evaluation metrics, and multimodal fusion methods, with Python and R toolkits for out-of-the-box use.

### Applications

![TrialBench experimental results](paper04.png)

Experiments show that across 14 binary classification tasks, multimodal models achieve F1 scores above 0.7 on 11 tasks, demonstrating strong predictive capability. Google DeepMind has already used TrialBench in TxGemma for adverse-event prediction, and the AUTOCT project also uses it as a benchmark evaluation platform.

### Open Access

TrialBench is open to researchers worldwide. It aims to promote deeper integration between AI and medical research, improve clinical-trial design, and accelerate new drug development.

Platform: https://huyjj.github.io/Trialbench/

<a href="https://mp.weixin.qq.com/s/W67qpWpovmYYvTSF1hc6tA" target="_blank">Read original article</a>
