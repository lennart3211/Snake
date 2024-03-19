cd build
cmake ../launcher
make
javac ../game/Snake.java ../game/Main.java
mv ../game/*.class .
jar cvf Snake.jar *.class
rm *.class
cd ..
