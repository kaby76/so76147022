# Generated from trgen 0.20.16
set -e
if [ -f transformGrammar.py ]; then python3 transformGrammar.py ; fi

java -jar "C:/Users/Kenne/.m2/antlr4-4.12.0-complete.jar" -encoding utf-8 -Dlanguage=Java   test.g4
java -jar "C:/Users/Kenne/.m2/antlr4-4.12.0-complete.jar" -encoding utf-8 -Dlanguage=Java   test.g4


JAR="C:/Users/Kenne/.m2/antlr4-4.12.0-complete.jar"
CLASSPATH="$JAR\;."
javac -cp "$CLASSPATH" *.java

exit 0
