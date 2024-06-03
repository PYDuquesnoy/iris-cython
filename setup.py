from setuptools import setup, Extension
from Cython.Build import cythonize

setup(
    name='myclass',
    version='0.3',
    ext_modules=cythonize(
        Extension(
            name="myclass",
            sources=["myclass.pyx"]
        )
    ),
    zip_safe=False,
)