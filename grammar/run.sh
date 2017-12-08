#!/bin/bash

# this is antlr4
java -jar /usr/local/lib/antlr-4.7-complete.jar atalk.g4 && \
# this compiles java files generated by antlr 
javac *.java && \
# this is grun
java org.antlr.v4.gui.TestRig atalk program < $1 > output

rm *.class
rm *.tokens
rm atalk*.java
#rm Atalk*.java