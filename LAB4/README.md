# 🖼️ Image Compression Algorithms – JPEG2000 & Arithmetic Coding

## 📂 Repository Contents

This repository contains two Jupyter Notebooks demonstrating **image compression techniques**:

1. **JPEG2000** – Wavelet-based image compression
2. **Arithmetic Image Coding** – Entropy-based image compression

---

## 📌 1. JPEG2000

### 🔎 Overview

The JPEG2000 notebook implements a **wavelet-based image compression pipeline**. Unlike standard JPEG (which uses DCT), JPEG2000 relies on the **Discrete Wavelet Transform (DWT)** to achieve better compression efficiency and higher visual quality at lower bitrates.

### 🔑 Key Steps

* Load input image
* Convert to **YCbCr color space**
* Apply **Discrete Wavelet Transform (DWT)**
* Quantization of wavelet coefficients
* **Entropy coding**
* Image reconstruction using **Inverse DWT**
* Compare original vs compressed image

### 📊 Outputs

* Compressed image visualization
* Compression ratio
* PSNR (Peak Signal-to-Noise Ratio) comparison

---

## 📌 2. Arithmetic Image Coding

### 🔎 Overview

The Arithmetic Coding notebook demonstrates **entropy coding** applied to images. Arithmetic coding encodes entire messages into a single fractional number between 0 and 1, leading to more efficient compression compared to Huffman coding.

### 🔑 Key Steps

* Read and flatten input image
* Calculate **symbol probabilities**
* Apply **Arithmetic Encoding**
* Perform **Arithmetic Decoding**
* Reconstruct original image

### 📊 Outputs

* Encoded bitstream representation
* Compression statistics
* Original vs reconstructed image comparison

---

## 🚀 How to Run

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/image-compression.git
   cd image-compression
   ```
2. Install dependencies:

   ```bash
   pip install numpy pandas matplotlib pillow pywavelets
   ```
3. Open Jupyter Notebook:

   ```bash
   jupyter notebook
   ```
4. Run:

   * `JPEG2000.ipynb` for wavelet-based compression
   * `ArithmeticCoding.ipynb` for entropy-based compression

---

## 📚 Dependencies

* Python 3.x
* NumPy
* Matplotlib
* Pillow (PIL)
* PyWavelets

---

## 📝 Notes

* Test images should be placed in the working directory before running.
* JPEG2000 implementation here is **simplified for educational purposes** and may not match industrial JPEG2000 standards.
* Arithmetic coding is demonstrated on grayscale images for clarity.

---

## 🎯 Learning Outcomes

* Understand the principles behind **JPEG2000 compression**
* Learn how **wavelet transforms** are applied to image data
* Explore **arithmetic coding** as an efficient entropy coding method
* Compare trade-offs between transform-based and entropy-based approaches
