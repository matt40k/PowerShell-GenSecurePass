# 
# PowerShell-GenSecurePass
# ====================================================
# Generates a random password with upper and lower 
# case alphanumeric and at least 1 special character
#
# Author: Matt Smith (https://matt40k.uk)
# Date: 10/08/2015
# Version 0.a
# License: GPL v2
#

Function GenSecurePass([int]$PasswordLength)
{
  $len = 24
  if ($PasswordLength -ge 12)
  {
    $len = $PasswordLength
  }
  $chars = [Char[]]"012@;:,.<>#STUV3789qr4LMNOIJKcdABP6ab0I-CDEO1*23uvwxyzbcdefstuCDQR(_+IJKLMabvwxA)yzEWXYZF=BGHef!£^ghijklmnop56N4TUV$%WXRSYZ5678klmnopqrs0abcdeFGHOTfghij1290123agPQRSLMNFGHIJK678EFGHPQ9defghij456UVWXYZ789klopqrst3mn45chi7LMNJKABCDOPQRjklmnopqrstuvwS89TUVWxyzXYZ012ABC012345DE3456789"
  $genpass = ($chars | Get-Random -Count $len) -join ""
  if
    (($genpass.Contains("@")) -or ($genpass.Contains(';'))-or ($genpass.Contains(':')) -or ($genpass.Contains(',')) -or ($genpass.Contains('.')) -or ($genpass.Contains('<')) -or ($genpass.Contains('>')) -or ($genpass.Contains('#')) -or ($genpass.Contains('-')) -or ($genpass.Contains('*')) -or ($genpass.Contains('(')) -or ($genpass.Contains('_')) -or ($genpass.Contains('+'))  -or ($genpass.Contains(')'))  -or ($genpass.Contains('='))  -or ($genpass.Contains('!'))  -or ($genpass.Contains('£'))  -or ($genpass.Contains('^')) -or ($genpass.Contains('$'))  -or ($genpass.Contains('%'))  -or ($genpass.Contains('"')))
  {
    return $genpass
  }
  else
  {
    return GenPass
  }
}