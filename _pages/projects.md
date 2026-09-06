---
layout: page
title: Projects
permalink: /projects/
nav: true
nav_order: 2
description: Real-world comparison of open-source embodied models.
---

## Real-world evaluation of ACT, π0.5, and SmolVLA

**Research project associated with my first-author PCC 2026 accepted paper.**

### Question

How do a behavior-cloning policy and two VLA models compare when evaluated on the same robotic platform across manipulation tasks of increasing complexity?

### Experimental setup

- **Robot:** myCobot Pro 630, a six-degree-of-freedom arm with an electric parallel gripper.
- **Visual input:** global and wrist-mounted RGB camera views.
- **Policies:** ACT, π0.5, and SmolVLA.
- **Tasks:** basic pick-and-place, precision stacking, and multi-object sorting.
- **Evaluation:** ID/OOD conditions, success rate, time-to-success, stage completion, and failure analysis.

### Findings

The experiments examine the balance between efficient execution in familiar settings and robustness to the tested spatial variations. Failure analysis considers grasping and placement errors, trajectory drift, and target-localization problems.

### Research output

_Multi-Dimensional Empirical Comparison of Three Open-Source Embodied Models_ — **accepted to PCC 2026**.

The project description summarizes the collaborative study. First authorship is recorded on the [Research page]({{ '/research/' | relative_url }}); a detailed breakdown of individual implementation responsibilities and a public code link are not yet provided.
