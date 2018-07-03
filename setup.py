from setuptools import setup, find_packages

setup(
    name='algorimp',
    version='0.1.0',
    packages=find_packages(),
    url='',
    license='',
    author='Márton Marczell',
    author_email='',
    description='',
    install_requires=['bidict', 'numpy', 'midi', 'midiutil', 'keras', 'tensorflow', 'fire'],
    extras_require={'legacy': ['theano', 'lasagne>=0.2.dev1'],
                    'gui': ['tkpf']
                    },
    tests_require=['matplotlib']
)
