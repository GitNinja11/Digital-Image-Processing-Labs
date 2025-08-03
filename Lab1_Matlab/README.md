# Digital Image Processing (MATLAB)

This repository contains basic **MATLAB scripts** that manually implement core digital image processing techniques such as grayscale conversion, black & white thresholding, and color channel removal — **without using MATLAB's high-level built-in functions like `rgb2gray` or `imbinarize`**.

## 🎯 Objective

To provide a beginner-friendly understanding of how basic image processing operations work internally, using raw matrix manipulation in MATLAB.

---

## 🧾 Features

- ✅ Convert RGB image to **grayscale** using weighted sum of R, G, B
- ✅ Convert grayscale image to **black & white** using manual thresholding
- ✅ **Remove a specific color channel** (Red, Green, or Blue) from an image
- ✅ Display original and processed images using `imshow` and `subplot`

---



## ✅ Requirements

- MATLAB R2016b or newer
- No special toolboxes required

---

## 🚀 How to Run

1. Clone the repository:

```bash
git clone https://github.com/your-username/digital-image-processing-matlab.git
cd digital-image-processing-matlab
````

2. Open MATLAB and set the current folder to the cloned directory.

3. Run the demonstration script:


This script will:

* Load an input image
* Convert it to grayscale manually
* Convert to black & white using a fixed threshold
* Remove a selected color channel
* Display all results using subplots

> Replace the default image path in `wallpaper.m` with your own image if needed.

---




