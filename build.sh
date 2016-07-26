rm -r target
mkdir target
mkdir target/lib
cp ./commons-io-1.3.jar target/lib
cp ./com.sun.net.httpserver.jar target/lib
cp ./jackson-all-1.9.0.jar target/lib
javac -cp .:./commons-io-1.3.jar:./com.sun.net.httpserver.jar:./jackson-all-1.9.0.jar ./src/*.java -Xlint:deprecation -Xlint:unchecked
cd src
jar cvfm ../target/run.jar ./META-INF/MANIFEST.MF  ./*.class
rm ./*.class
