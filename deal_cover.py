import cv2
import sys
import numpy as np
import os

def deal_cover(cover_path):
    img = cv2.imread(cover_path)
    crop_border = 10 # prevent black borders
    img = img[crop_border:-crop_border, crop_border:-crop_border]
    bg = np.zeros((1700, 3000, 3), np.uint8)
    bg[:, :, :] = 255
    h, w, _ = img.shape
    r = min(1700 / h, 3000 / w)
    img = cv2.resize(img, (int(w * r), int(h * r)))
    h, w, _ = img.shape
    x0, y0 = (3000 - w) // 2, (1700 - h) // 2
    bg[y0:y0 + h, x0:x0 + w] = img
    return bg

if __name__ == '__main__':
    cover_path = sys.argv[1]
    img = deal_cover(cover_path)
    fname = os.path.splitext(cover_path)[0]
    assert cv2.imwrite(f'{fname}_deal.jpg', img)
    # cv2.imshow('img', img)
    # cv2.waitKey(0)