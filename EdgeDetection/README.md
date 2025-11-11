# Edge Detection from Scratch (Roberts, Prewitt, and Sobel)

## Overview
Edge detection is a fundamental operation in image processing used to identify sharp changes in pixel intensity. These intensity changes usually correspond to object boundaries, texture variations, and meaningful structural information.

In this project, we implement three classical edge detection operators **from scratch** using only NumPy:
- **Roberts Cross Operator**
- **Prewitt Operator**
- **Sobel Operator**

All computations are performed manually without libraries like OpenCV or skimage, so the underlying concept is clearly demonstrated.

---

## Why Edge Detection?
Edges are useful for:
- Object detection
- Image segmentation
- Computer vision preprocessing
- Feature extraction in ML/DL models

Edges highlight important structural changes in an image while ignoring non-essential details.

---

## Theory

### 1. Computing Gradients
Edges occur where the gradient (rate of intensity change) is high. Gradient magnitude is computed as:

\[
G = \sqrt{G_x^2 + G_y^2}
\]

Where:
- \(G_x\): change along x-direction (vertical edges)
- \(G_y\): change along y-direction (horizontal edges)

---

### 2. Operator Kernels

| Operator | \(G_x\) Kernel | \(G_y\) Kernel | Notes |
|---------|----------------|----------------|-------|
| **Roberts** | \(\begin{bmatrix}1 & 0\\0 & -1\end{bmatrix}\) | \(\begin{bmatrix}0 & 1\\-1 & 0\end{bmatrix}\) | Works on **2×2**, detects fine sharp edges |
| **Prewitt** | \(\begin{bmatrix}-1 & 0 & 1\\-1 & 0 & 1\\-1 & 0 & 1\end{bmatrix}\) | \(\begin{bmatrix}-1 & -1 & -1\\0 & 0 & 0\\1 & 1 & 1\end{bmatrix}\) | Smooths before gradient, softer edges |
| **Sobel** | \(\begin{bmatrix}-1 & 0 & 1\\-2 & 0 & 2\\-1 & 0 & 1\end{bmatrix}\) | \(\begin{bmatrix}-1 & -2 & -1\\0 & 0 & 0\\1 & 2 & 1\end{bmatrix}\) | More robust to noise, strong edges |

---

## Implementation Steps
1. Load or upload an image (converted to grayscale)
2. Define the selected operator’s kernels
3. Perform convolution manually
4. Compute gradient magnitude
5. Normalize and display results

---

## Output Interpretation
- **Roberts**: Detects very thin sharp edges, sensitive to noise.
- **Prewitt**: Produces smoother edges, less noise sensitivity.
- **Sobel**: Produces bold, clear edges and is best for most real images.

---

## Applications
- Lane detection in autonomous vehicles
- Medical image boundary detection (e.g., tumors in MRI scans)
- Object outline detection
- Preprocessing for CNN feature extraction

---

## Limitations
- Sensitive to noise (especially Roberts)
- Does not detect edges within uniform regions
- No direction labeling unless angle is computed separately

