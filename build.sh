mvn clean package
rm -rf target
cd build
rm *.class
cmake ../launcher
make
rm -rf vendor
rm -rf CMakeFiles
rm Makefile
rm *.cmake
rm *.ini
rm *.txt

cd ..
