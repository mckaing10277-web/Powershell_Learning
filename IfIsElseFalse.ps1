1 -eq 2 #equals (false)(boolean)
1 -eq 1 #equals (true)(boolean)
1 -lt 2 #less than (true)(boolean)
2 -le 2 #less than or equal to (true)(boolean)
3 -gt 2 #greater than (true)(boolean)
3 -ge 4 #greater than or equal to (false)(boolean)
4 -ne 4 #not equal to (false)(boolean)

$FilePath ="C:\Powershell_Learning\IfIsElseFalse.ps1"
Get-Content -path $FilePath

if (Test-Path -path $FilePath) {$Data = Get-Content -path $FilePath        
    $Data.count}                                                            
else {Write-Output "The file $FilePath does not exist."}

#test-path (does the path exist? true/false) if it is true then get-content will run. If file does not exist, it will skip to else statement.
# .count shows line count of the file ($Data.count)
#since we are turning the get-content into a variable ($Data) we can use .count to get the number of lines in the file, because otherwise get-content would just output the content of the file.