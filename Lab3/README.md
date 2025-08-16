📦 Image Compression using Huffman & Shannon–Fano Encoding

This project demonstrates **lossless image compression** using two classic entropy coding techniques:

* **Huffman Coding**
* **Shannon–Fano Coding**

Both algorithms are implemented in Python and applied on the standard **Lenna grayscale image**. The scripts compress the image by encoding pixel intensities into binary strings and then reconstruct the original image through decoding.

---

## 🔧 Requirements

Make sure you have the following installed:

```bash
pip install pillow matplotlib
```

---

## 📂 Files

* **huffman.py** → Implements Huffman Encoding & Decoding.
* **shannon\_fano.py** → Implements Shannon–Fano Encoding & Decoding.
* **Lenna.png** → Test grayscale image.

---

## ▶️ How It Works

### 1. Load Image

* Convert the image to grayscale (`L` mode).
* Extract pixel values as a list.

### 2. Build Frequency Table

* Count how often each pixel value (0–255) occurs.

### 3. Encode

* **Huffman**: Build a binary tree based on frequencies. Shorter codes for frequent values, longer codes for rare ones.
* **Shannon–Fano**: Recursively split symbols into two groups of nearly equal probability and assign `0`/`1`.

### 4. Decode

* Reconstruct the original image by reversing the encoding using the generated code dictionary.

### 5. Display & Compare

* Show **original image** vs **decoded image**.
* Print statistics:

  * Original size (in bits)
  * Compressed size (in bits)
  * Compression ratio

---

## 📊 Example Output

Running either script prints:

```
Original size (bits): 262144
Compressed size (bits): 156780
Compression ratio: 0.598
```

And displays:

* Left: Original grayscale image
* Right: Decoded (lossless reconstruction)

---

## 📜 Algorithms Overview

### Huffman Coding

* Builds a priority queue of symbols sorted by frequency.
* Repeatedly merges the two least frequent nodes into a binary tree.
* Assigns binary codes based on tree traversal (`0` = left, `1` = right).

### Shannon–Fano Coding

* Sorts symbols by frequency (highest first).
* Recursively splits them into two groups with equal total frequency.
* Assigns `0` to one group, `1` to the other.

---

## 🚀 Run the Scripts

### Huffman

```bash
python huffman.py
```

### Shannon–Fano

```bash
python shannon_fano.py
```

---

## ✅ Results

* Both algorithms **perfectly reconstruct** the image (lossless compression).
* **Huffman generally achieves better compression** than Shannon–Fano.
* Compression ratio depends on pixel distribution in the image.

---

## 📌 Notes

* Works with **grayscale images** (`.png`, `.jpg`, etc.).
* For color images (RGB), the algorithm needs to be applied on each channel separately.
* Huffman guarantees optimal prefix codes, while Shannon–Fano does not.

