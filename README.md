PowerShell-GenSecurePass
========================
Generates a random password with upper and lower case alphanumeric characters and at least 1 special character.

Default length - 24 characters
Min length - 12 characters

Author: Matt Smith [(https://matt40k.uk)](https://matt40k.uk)

Date: 10/08/2015

Version 0.a

License: GPL v2


##Example of usage:

```
$Secure_Password = GenSecurePass
Write-Host $Secure_Password
```
Example result: jQ5Dw0pWDi2_j7mITDI2JWk3


Setting the PasswordLength to 16 characters
```
$Secure_Password = GenSecurePass -PasswordLength 16
Write-Host $Secure_Password
```
Example result: yzzQV0G4*qxLY2X6

Attempting to set the PasswordLength to lower then 12 will be ignored and the default (24) character length will be used.

```
$Secure_Password = GenSecurePass -PasswordLength 10
Write-Host $Secure_Password
```
Example result: Ykqa02s2cMug^1D9rSatAGeJ