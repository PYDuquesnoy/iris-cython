# iris-cython
Calling Compiled Python Code from IRIS



Steps

```
pipenv --python 3.9
pipenv shell
python --version
```



Install Requirements

```
pipenv install cython
pipenv install setuptools
pipenv install wheel
```



code in myclass.pyx



To Compile and build the wheel:

```
python setup.py build_ext --inplace
python setup.py bdist_wheel
```

Intall in IRIS

```
c:\InterSystems\IH2024\bin>irispip install c:\dev\2024\iris-cython\dist\myclass-0.3-cp39-cp39-win_amd64.whl
```



Call from IRIS:

```
/// Call External Wheel module from IRIS
/// Module has been installed with
/// c:\InterSystems\IH2024\bin>irispip install \
/// c:\dev\2024\iris-cython\dist\myclass-0.3-cp39-cp39-win_amd64.whl
Class CyDemo.CallExternal Extends %RegisteredObject
{

ClassMethod Run()
{
	set mod=##class(%SYS.Python).Import("myclass")
	set obj=mod.MyClass(5)
	do obj.increment()
	Write "New value of python object:",obj."get_value"(),!
	Write "Calling show_value:",!
	do obj."show_value"()
}

}
```

Run with:

```
do ##class(CyDemo.CallExternal).Run()
```



