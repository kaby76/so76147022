$JAR = 'C:/Users/Kenne/.m2/antlr4-4.12.0-complete.jar'
$CLASSPATH = "$JAR\;$pwd"
java -cp "$CLASSPATH" Test $args
