# Contrast Stretching from Scratch (Min–Max and Percentile Stretching)

## Overview
Many images suffer from low contrast because their pixel intensity ranges are restricted to a small region of the full grayscale range (0–255). Contrast stretching enhances visibility by expanding intensity distribution.

This project implements:
1. **Min–Max Stretching**
2. **Percentile-Based Stretching (2–98%)**

---

## Why Stretching Matters
Enhances:
- Texture visibility
- Object clarity
- Edge separability
- Overall image aesthetics

Often used as a **preprocessing step** before segmentation or feature extraction.

---

## Mathematical Formulation

### 1. Min–Max Stretch
\[
I_{out} = \frac{(I - I_{min}) \cdot 255}{I_{max} - I_{min}}
\]

### 2. Percentile Stretch
\[
I_{out} = \frac{(I - P_{low}) \cdot 255}{P_{high} - P_{low}}
\]

Where:
- \(P_{low}, P_{high}\) are intensity values at selected percentiles (e.g., 2% & 98%)

---

## Output Interpretation

| Before | After |
|--------|-------|
| Histogram tight and narrow | Histogram spreads across 0–255 |
| Image looks dull/gray | Contrast and brightness appear improved |

Spikes at 0 and 255 are expected → pixels clipped to boundaries.

---

## Applications
- Medical imaging
- Satellite / aerial photo enhancement
- CCTV / low-light surveillance improvement
- Preprocessing in ML pipelines

---

## Advantages
- Simple and fast (linear computation)
- Works well for uniformly low-contrast images

## Limitations
- May over-enhance noise in high-frequency regions
- Percentile selection must be tuned for each image

