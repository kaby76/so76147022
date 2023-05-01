# Generated from trgen 0.20.16
$(& Remove-Item *.interp -Recurse -Force ) 2>&1 | Out-Null
$files = New-Object System.Collections.Generic.List[string]
$f = java -jar "C:/Users/Kenne/.m2/antlr4-4.12.0-complete.jar" -depend -encoding utf-8 -Dlanguage=Java   test.g4
foreach ($s in $f) {
    $j = $s.Split(" ")[0]
    $files.Add($j)
}
foreach ($f in $files)
{
    $(& Remove-Item $f -Force ) 2>&1 | Out-Null
}
$f = java -jar "C:/Users/Kenne/.m2/antlr4-4.12.0-complete.jar" -depend -encoding utf-8 -Dlanguage=Java   test.g4
foreach ($s in $f) {
    $j = $s.Split(" ")[0]
    $files.Add($j)
}
foreach ($f in $files)
{
    $(& Remove-Item $f -Force ) 2>&1 | Out-Null
}

$(& Remove-Item *.class -Recurse -Force ) 2>&1 | Out-Null
exit 0
