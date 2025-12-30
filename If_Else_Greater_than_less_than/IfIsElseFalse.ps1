1 -eq 2 #equals (false)(boolean)
1 -eq 1 #equals (true)(boolean)
1 -lt 2 #less than (true)(boolean)
2 -le 2 #less than or equal to (true)(boolean)
3 -gt 2 #greater than (true)(boolean)
3 -ge 4 #greater than or equal to (false)(boolean)
4 -ne 4 #not equal to (false)(boolean)

$FilePath ="C:\Powershell_Learning\Test.txt"
Get-Content -path $FilePath

if (Test-Path -Path $filePath) {
    $Data = Get-Content -Path $filePath

    if ($Data.Count -le 2) {
        Write-Output "This file has less than 2 lines"
    }
    elseif ($Data.Count -eq 3) {
        Write-Output "This file has 3 lines"
    }
    else {
        Write-Output "This file has 4 or more lines"
    }
   
    Write-Output "This is outside the if statement"  #FYI
}
else {
    Write-Output "File '$filePath' does not exist"
}

<#test-path (does the path exist? true/false) if it is true then get-content will run. If file does not exist, it will skip to else statement#>
<# .count shows line count of the file ($Data.count)#>
<#since we are turning the get-content into a variable ($Data) we can use .count to get the number of lines in the file, because otherwise get-content would just output the content of the file.#>
#If, nested IF, ElseIf, Else- If the first "If" is false it will jump to else. If the first nested "IF" is false it will jump to ElseIf. If ElseIf is false it will jump to Else. If any of them are true it will run that block of code and skip the rest.#>ElseIf only refers to the previous If or ElseIf statement directly before it.