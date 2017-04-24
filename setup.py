from distutils.core import setup

setup(
    name='algorimp',
    version='0.1.0',
    packages=['models'],
    url='',
    license='',
    author='Márton Marczell',
    author_email='',
    description='',
    install_requires=['bidict', 'numpy', 'midi', 'midiutil', 'theano', 'lasagne>=0.2.dev1', 'keras', 'fire'],
    tests_require=['matplotlib']
)
