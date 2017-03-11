# AlgorImp
An algorithmic jazz improviser written in Python.

## Get started
### Installation
Most dependencies will install from PyPI no problem. (NumPy and SciPy installation depends on your platform.)
You'll have to install two packages from GitHub.
The MIDI package published on PyPI is Python 2 only, and Lasagne has some blocking issues
that prevent them from publishing v0.2.
 

    pip install https://github.com/marczellm/python-midi/archive/feature/python3.zip
    pip install https://github.com/Lasagne/Lasagne/archive/master.zip

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
I've ran this on CUDA 7.5 and GCC 4.9 with the following `.theanorc`:
```
[global]
device = gpu
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
Weimar Jazz Database of the [Jazzomat Research Project](The Jazzomat Research Project).
They fall under the [Open Database License v1.0](https://opendatacommons.org/licenses/odbl/1.0/).