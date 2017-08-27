all: RTree

RTree: 
    cl *.cpp

.cpp.obj:  
  $(cc) $(cdebug) $(cflags) $(cvars) $*.cpp
  
Test: Test.obj  
  $(link) $(ldebug) $(conflags) -out:Test.exe Test.obj $(conlibs)

TestBadData: TestBadData.obj  
  $(link) $(ldebug) $(conflags) -out:TestBadData.exe TestBadData.obj $(conlibs)

MemoryTest: MemoryTest.obj
  $(link) $(ldebug) $(conflags) -out:MemoryTest.exe MemoryTest.obj $(conlibs)

clean:
    del *.obj *.exe