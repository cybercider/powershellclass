#Question 2 - Using the “for” loop the following code snippet create a password generator that will create a 10-character long password:


#solution 1

for ($i=0; $i -lt 10; $i++){
    $Char = -join ((65..90) + (97..122) | Get-Random | ForEach-object {[char]$_})
    $Password = $Password + $Char
}
$Password