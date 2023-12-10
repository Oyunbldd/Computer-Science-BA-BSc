# function Convert-RomanToDecimal {
#     param (
#         [string]$romanNumber
#     )

#     $romanMap = @{
#         'I' = 1
#         'V' = 5
#         'X' = 10
#         'L' = 50
#         'C' = 100
#         'D' = 500
#         'M' = 1000
#     }
#     $decimalValue = 0
#     $prevValue = 0
    
#     foreach ($char in $romanNumber.ToCharArray()) {
#         $currentValue = $romanMap[$char]

#         if ($currentValue -lt $prevValue) {
#             $decimalValue -= $currentValue
#         }
#         else {
#             $decimalValue += $currentValue
#         }
#         $prevValue = $currentValue
#     }

#     return $decimalValue
# }

# $romanNumber = Read-Host "Enter a Roman numeral"
# $decimalValue = Convert-RomanToDecimal -romanNumber $romanNumber

# Write-Host "The decimal value of $romanNumber is: $decimalValue"