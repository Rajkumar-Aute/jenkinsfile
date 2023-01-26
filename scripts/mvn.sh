docker run --rm -v "$PWD/javacode:/app-build" -v "/root/.m2/:/root/m2/" -w /app-build maven:3-alpine "$@"
echo 'sh ./mvn.sh mvn -B -DskipTests clean package'