# AlgorImp
An algorithmic jazz improviser written in Python.

## Get started
### Installation
Most dependencies will install from PyPI no problem. (NumPy and SciPy installation depends on your platform.)
You'll have to install two packages from GitHub, because the MIDI package published on PyPI is Python 2 only,
and Lasagne has some blocking issues
that prevent them from publishing v0.2.
 

    pip install https://github.com/marczellm/python-midi/archive/feature/python3.zip
    pip install https://github.com/Lasagne/Lasagne/archive/master.zip
    
### Usage
    python main.py <task> <task parameters>

Available tasks:
    
    single <model> <song> <choruses>

Train a model on a single input file containing a solo on a given chord progression, 
and generate another solo for the same changes. 
- `model` can be `markov`, `neural`, `lstm` or `lstm_stateless`.
- For the given `song`, there has to be a MIDI file in the `input` folder and a chord 
  progression file in the `changes` folder, both with the same name as `song`
- `choruses` is the number of choruses to generate

    
    weimar <model> <song> <choruses>

Train a model on the Weimar database of jazz solo transcriptions, and generate a solo
for another song. Both the MIDI and the changes file still has to exist,
the former to seed the generator. Models are `neural` and `lstm`.


    turing
    
Generate a Turing test: 5 choruses of machine improvisation
and 5 choruses of human improvisation in separate MIDI files.
    

### Configuration
#### Windows
On Windows I've successfully ran this code on CPU with GCC 6.2 (installed through MSYS2)
and either Tensorflow or Theano with the following `.theanorc`:

```
[global]
base_compiledir = D:\ProgramFiles\theano\
# device=opencl1:0  # Enable these two when proper OpenCL support comes to Theano
# floatX=float32

[gcc]
cxxflags = -D_hypot=hypot -Wno-narrowing
# Add these flags when using gpuarray for GPU support
# -ID:\ProgramFiles\theano\libgpuarray\include\ -LD:\ProgramFiles\theano\libgpuarray\lib\Release\
```
#### Linux 
I've ran this on CUDA 7.5 and GCC 4.9 with the following `.theanorc`, after
[installing libgpuarray](http://deeplearning.net/software/libgpuarray/installation.html):
```
[global]
device = cuda
floatX = float32
cxx = /usr/bin/g++-4.9

[gcc]
cxxflags=-w

[cuda]
root = /usr/local/cuda

[nvcc]
flags=-ccbin=/usr/bin/g++-4.9 -D_FORCE_INLINES -w
```

## License
The MIDI files in the `weimar` directory are from the 
Weimar Jazz Database of the [Jazzomat Research Project](https://jazzomat.hfm-weimar.de/).
They fall under the [Open Database License v1.0](https://opendatacommons.org/licenses/odbl/1.0/).