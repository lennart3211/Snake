cd build

cmake ..\launcher

cmake --build .

javac ..\game\Snake.java ..\game\Main.java

move ..\game\*.class

jar cvf Snake.jar *.class


move debug\Launcher.exe .

rmdir /s /q CMakeFiles
rmdir /s /q Debug
rmdir /s /q Launcher.dir
rmdir /s /q vendor
rmdir /s /q x64

del *.vcxproj
del *.filters
del *.class
del *.cmake
del *.ini
del *.txt
del *.sln

cd ..
