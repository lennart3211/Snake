cd game
javac -cp lib/Java-WebSocket-1.5.6.jar Main.java Snake.java
move *.class ..\build

cd ..\build
cmake ..\launcher
cmake --build .

move debug\Launcher.exe .

rmdir /s /q CMakeFiles
rmdir /s /q Debug
rmdir /s /q Launcher.dir
rmdir /s /q vendor
rmdir /s /q x64

del *.vcxproj
del *.filters
del *.cmake
del *.ini
del *.txt
del *.sln

cd ..
