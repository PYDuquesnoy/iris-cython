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
