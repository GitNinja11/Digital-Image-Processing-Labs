# 2D Discrete Wavelet Transform (Haar) and Reconstruction (IDWT)

## Overview
The **Discrete Wavelet Transform (DWT)** decomposes an image into multiple frequency subbands, capturing both spatial and frequency information. Unlike the Fourier transform, DWT provides **localization**, making it effective for image analysis and compression.

In this project, we implement **2D Haar Wavelet Transform** and **Inverse DWT (IDWT)** completely from scratch using NumPy.

---

## Why Wavelets?
Wavelets allow:
- Multi-resolution representation of images
- Separation of structure (LL) from detail (LH, HL, HH)
- Efficient compression (JPEG-2000 standard)

---

## Haar Wavelet Theory

The 1D Haar basis uses two filters:

Low-pass filter (approximation):
\[
h_0 = \frac{1}{\sqrt{2}} [1, 1]
\]

High-pass filter (detail):
\[
h_1 = \frac{1}{\sqrt{2}} [1, -1]
\]

### 2D Decomposition
We apply filtering:
1. **Row-wise**
2. **Column-wise**

This produces 4 subbands:

| Subband | Description |
|--------|-------------|
| **LL** | Approximation (smooth version of image) |
| **LH** | Horizontal edge details |
| **HL** | Vertical edge details |
| **HH** | Diagonal & fine texture |

---

## Subband Visual Meaning
- **LL** looks like a smaller blurry version of the image
- **LH** shows vertical boundaries (horizontal filtering)
- **HL** shows horizontal boundaries (vertical filtering)
- **HH** shows fine noise + diagonal textures

---

## Reconstruction (IDWT)
Inverse transform recombines subbands using synthesis filters.  
A correct implementation yields:

\[
\text{Original Image} \approx \text{Reconstructed Image}
\]

Measured using:
\[
MSE = \frac{1}{N} \sum (I - \hat{I})^2
\]

---

## Applications
- Image compression (JPEG-2000)
- Noise reduction / denoising
- Image fusion
- Feature extraction in ML/CNNs

---

## Advantages
- Localized in both spatial and frequency domain
- Multi-resolution capability
- Effective representation of edges and textures

## Limitations
- Haar wavelet is simple → may produce blocky LL results
- Higher-order wavelets (Daubechies, Coiflet) give smoother approximations
