from matplotlib.image import imread
import matplotlib.pyplot as plt
from helpers import princomp
from matplotlib.ticker import NullLocator


def main():
    A = imread('k.png')
    A = A.mean(2)  # grayscale conversion
    i = 1
    M = (A - A.T.mean(axis=1)).T  # subtract the mean along columns
    for numpc in range(0, 60, 10):
        coeff, score, latent = princomp(M)
        coeff = coeff[:, range(numpc)]
        score = coeff.T @ M
        Ar = (coeff @ score).T + A.mean(axis=0)  # image reconstruction
        ax = plt.subplot(2, 3, i, frame_on=False)
        ax.xaxis.set_major_locator(NullLocator())  # remove ticks
        ax.yaxis.set_major_locator(NullLocator())
        i += 1
        ax.imshow(Ar, cmap='gray')
        ax.set_title('PCs # ' + str(numpc))
    plt.show()

if __name__ == '__main__':
    main()
