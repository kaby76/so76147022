# Generated from trgen 0.20.16
if (Test-Path -Path transformGrammar.py -PathType Leaf) {
    $(& python3 transformGrammar.py ) 2>&1 | Write-Host
}

$(& java -jar C:/Users/Kenne/.m2/antlr4-4.12.0-complete.jar test.g4 -encoding utf-8 -Dlanguage=Java   ; $compile_exit_code = $LASTEXITCODE) | Write-Host
if($compile_exit_code -ne 0){
    exit $compile_exit_code
}
$(& java -jar C:/Users/Kenne/.m2/antlr4-4.12.0-complete.jar test.g4 -encoding utf-8 -Dlanguage=Java   ; $compile_exit_code = $LASTEXITCODE) | Write-Host
if($compile_exit_code -ne 0){
    exit $compile_exit_code
}


$(& javac -cp "C:/Users/Kenne/.m2/antlr4-4.12.0-complete.jar;." testParser.java testLexer.java  Test.java ErrorListener.java ; $compile_exit_code = $LASTEXITCODE) | Write-Host
exit $compile_exit_code
