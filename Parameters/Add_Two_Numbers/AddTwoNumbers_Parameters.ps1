#parameters, mandatory, positions, $(), 

param(
    [parameter(Mandatory=$true, Position=1)] #Mandatory- must recieve input. 
    [double]$FirstNumber,  #could all be on one line

    [parameter(Mandatory=$true, Position=2)]
    [double]$SecondNumber   #double- this allows you to enter decimal values.
)

"First number: $FirstNumber"
"Second number: $SecondNumber"
"Sum: $($FirstNumber + $SecondNumber)" #without $() it would run the two variables literally and output "value+value" as a string+string. the $() makes powershell "run" the math inside then display the result as a string, rather than just showing the two variables as strings individually with a plus sign. 
Read-Host "Press Enter to exit"
#must run C:\Powershell_Learning\Parameters> .\Add_Two_Numbers\AddTwoNumbers_Parameters.ps1 then you will be promped to enter the two numbers and script will output the sum.

