---
layout: page
title: Research
permalink: /research/
nav: true
nav_order: 1
description: Embodied intelligence and real-world evaluation of robot learning policies.
---

## Research focus

My current work studies how robot learning policies behave on real hardware, with an emphasis on vision-language-action models, spatial generalization, execution efficiency, and manipulation failures.

## Accepted paper

### Multi-Dimensional Empirical Comparison of Three Open-Source Embodied Models

**Zhenxin Wu**, Li Zhi, Xilong Huang, Chenyang Ding, Jiexin Qiu, Zhiyong Yu.

**Accepted to PCC 2026 — 全国普适计算学术会议 2026**  
Chinese title: 《三种开源体现模型的多维实证比较》  
First author · Acceptance notification: July 20, 2026

The study compares **ACT, π0.5, and SmolVLA** on a **myCobot Pro 630** robotic arm. Its evaluation covers pick-and-place, precision stacking, and multi-object sorting under in-distribution (ID) and out-of-distribution (OOD) conditions. The analysis considers success rate, time-to-success, stage completion, and failure behavior.

Within the tested setup, ACT shows an execution-efficiency advantage in constrained ID settings, while the VLA models achieve higher success rates under the evaluated OOD variations. The study examines the trade-offs between spatial adaptability, control accuracy, and deployment requirements.

These findings concern the tasks and conditions evaluated in the manuscript; they do not establish unrestricted open-world generalization.

**Status:** accepted conference paper. Proceedings information and DOI will be added when available.

[Experimental project overview]({{ '/projects/' | relative_url }})
