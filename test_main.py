from music import ChordProgression, ABCNote

def main():
    filename = r"changes\Cblues.txt"
    with open(filename) as f:
        print(ChordProgression(ABCNote.C, f.read()).transpose(ABCNote.E))

if __name__ == '__main__':
    main()
