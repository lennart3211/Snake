WEBSOCKET_JAR = lib/Java-WebSocket-1.5.6.jar
JAVA_FILES = game/Main.java game/Snake.java


all: launcher game clean
	cd build
	cmake ../launcher
	cmake --build .
	cd ..
	cd game
	javac -cp ${WEBSOCKET_JAR} ${JAVA_FILES}
	move *.class ../build
	cd ..

launcher: 
	cd build
	cmake ../launcher
	cmake --build .
	cd ..
	# if exist build\\CMakeFiles rmdir /s /q build\\CMakeFiles
    # if exist build\\Debug rmdir /s /q build\\Debug
    # if exist build\\Launcher.dir rmdir /s /q build\\Launcher.dir
    # if exist build\\vendor rmdir /s /q build\\vendor
    # if exist build\\x64 rmdir /s /q build\\x64
    # if exist build\\*.vcxproj del build\\*.vcxproj
    # if exist build\\*.filters del build\\*.filters
    # if exist build\\*.cmake del build\\*.cmake
    # if exist build\\*.ini del build\\*.ini
    # if exist build\\*.txt del build\\*.txt
    # if exist build\\*.sln del build\\*.sln
	
game: 
	cd game
	javac -cp ${WEBSOCKET_JAR} ${JAVA_FILES}
	move *.class ../build
	cd ..
	

# clean:
#     if exist build\\CMakeFiles rmdir /s /q build\\CMakeFiles
#     if exist build\\Debug rmdir /s /q build\\Debug
#     if exist build\\Launcher.dir rmdir /s /q build\\Launcher.dir
#     if exist build\\vendor rmdir /s /q build\\vendor
#     if exist build\\x64 rmdir /s /q build\\x64
#     if exist build\\*.vcxproj del build\\*.vcxproj
#     if exist build\\*.filters del build\\*.filters
#     if exist build\\*.cmake del build\\*.cmake
#     if exist build\\*.ini del build\\*.ini
#     if exist build\\*.txt del build\\*.txt
#     if exist build\\*.sln del build\\*.sln