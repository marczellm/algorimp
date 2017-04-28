import tempfile
import subprocess
import os

# Taken from https://github.com/andreasjansson/ly2midi and modified


class LilyBlock:
    def __init__(self, text, name=None):
        self.text = text
        self.name = name

    def outer_text(self):
        if self.name is None:
            return self.text
        return '\\%s { %s }' % (self.name, self.text)

    def remove_block(self, name):
        found = self.find_block(name)
        if found is None:
            return
        block, start, end = found
        self.text = self.text[:start] + self.text[(end + 1):]

    def replace_block(self, name, block):
        found = self.find_block(name)
        if found is None:
            return
        old_block, start, end = found
        self.text = self.text[:start] + block.outer_text() + self.text[(end + 1):]

    def add_block(self, block):
        self.text += '\n' + block.outer_text()

    def find_block(self, name):
        """ Find the first matching Lilypond block. """
        start = self.text.find('\\' + name)
        if start == -1:
            return None
        p = start + len('\\' + name)
        block_start = start
        inner_start = None
        inner_end = None
        braces = 0
        while p < len(self.text):
            c = self.text[p]
            if c == '{':
                if braces == 0:
                    inner_start = p + 1
                braces += 1
            elif c == '}':
                braces -= 1
                if braces == 0:
                    inner_end = p - 1
                    p += 1
                    break
            elif c == '\\' and braces == 0:
                break
            p += 1
        if braces != 0:
            return None
        block_end = p - 1
        if inner_start is None:
            block = LilyBlock('', name)
        else:
            block = LilyBlock(self.text[inner_start:inner_end], name)
        return block, block_start, block_end


def prepare_for_midi_output(text):
    block = LilyBlock(text)
    score = block.find_block('score')
    basic_midi = LilyBlock('', 'midi')
    if score is None:
        score = LilyBlock('', 'score')
        score.add_block(basic_midi)
        block.add_block(score)
    else:
        score = score[0]
        midi = score.find_block('midi')
        if midi is None:
            score.add_block(basic_midi)
        score.remove_block('layout')
        block.replace_block('score', score)
    return block.outer_text()


def convert_file(infile, outfile) -> str:
    with open(infile) as f:
        in_text = f.read()
        out_text = prepare_for_midi_output(in_text)
        with tempfile.NamedTemporaryFile(suffix='.ly', mode='w', delete=False) as tmp_file:
            tmp_file.write(out_text)
    ret = subprocess.check_output(
        ['lilypond', '-o', outfile, tmp_file.name],
        shell=False, stderr=subprocess.STDOUT).decode('ascii')
    os.remove(tmp_file.name)
    return ret


def main():
    folder = r'weimardb\lilypond'
    for file in os.listdir(folder):
        print(file)
        if os.path.splitext(file)[1] == '.ly':
            convert_file(os.path.join(folder, file), 'weimardb\\midi_from_ly\\' + os.path.splitext(file)[0])

if __name__ == '__main__':
    main()
