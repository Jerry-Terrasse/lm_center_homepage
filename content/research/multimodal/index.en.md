---
title: Multimodal Large Model Research Group
date: 1020-01-01 # to control the display order
# author: test
type: landing

design:
  # Section spacing
  spacing: '1rem'

sections:
  - block: markdown
    content:
      title: 
      text: |
        ## Multimodal Large Model Research Group
  - block: collection
    id: members
    content:
      title: Team Members
      filters:
        folders:
          - authors
        tag: mm_prof
      count: 0
    design:
      view: people-grid
      columns: 4
  - block: markdown
    content:
      title: Research Overview
      text: |
        #### Representative Achievement 1: Shusheng Multimodal Large Model Series - InternVL

        #### Representative Achievement 2: Video Fundamental Representation Model - VideoMAE Series
        ![VideoMAE](/research/multimodal/videomae.png)
        This work proposed the video masked autoencoder VideoMAE v1 & v2, successfully training the first video Transformer model with one billion parameters and breaking through the performance bottleneck of video self-supervised representation learning. The VideoMAE series has been cited over 1500 times and has become the benchmark method in the field of video self-supervised learning. It has been further developed and extended by Oxford University, Microsoft, Google, and Meta, and became the first video Transformer model included in the open-source community Hugging Face, with over 3.2 million downloads worldwide, ranking first on the Hugging Face video recognition model leaderboard.

        #### Representative Achievement 3: Video Multimodal Large Model - VideoChat Series

        ![VideoChat](/research/multimodal/videochat.png)
        
        This work introduced the world’s first video-centric multimodal dialogue large model, VideoChat, which has established a general video understanding capability driven by interactive dialogue, achieving leading performance on multiple multimodal video understanding datasets. The underlying video technology has been applied in the development of the Kuaishou Keling large model, earning over 3000 stars on GitHub and significant academic impact. Recently, the VideoChat-Online and VideoChat-Flash versions have been launched, further enhancing VideoChat’s overall performance in terms of interactive modalities and efficient long-term modeling.

        #### Representative Achievement 4: Shusheng Video Large Model - InternVideo Series

        ![InternVideo](/research/multimodal/internvideo.png)
        
        This work introduced the world’s first general video understanding large model, InternVideo. In 2022, the video basic representation model version, InternVideo 1.0, was released, achieving world-leading performance in key tasks such as video basic perception, video spatiotemporal parsing, and video action recognition. In 2024, the video multimodal understanding model version, InternVideo 2.0, was released, achieving leading performance on over 60 video understanding tasks, including recognition retrieval, open-domain Q&A, high-level reasoning, and more. In 2025, the deep spatiotemporal understanding version, InternVideo 2.5, was released, significantly enhancing both the span and granularity of video understanding, with its "memory" capacity increased sixfold compared to the previous generation.
---

The Multimodal Large Model Research Group is committed to advancing research and applications of multimodal large models by exploring key techniques in multimodal information fusion, interaction, and reasoning. It promotes the use of these models across visual, audio, and textual data to support the development of multimodal intelligent technologies.