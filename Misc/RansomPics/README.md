# RansomPics 
**Points- 200**
**Description**
> We have been hit by a ransomware, all our pictures have been encrypted and we need this one right now.

**Write up**
For this challenge we were given a file named `flag_16.xng` and also a hit was given that it was a png file. 

As most ransomwares use simple encrypting systems lets assume that it has been xorred all over.

As the file has been named `flag_16.xng` lets assume that a 16 byte key is used to xor every byte of the file, and we need this key to get the original png back.

Lets look at the first 16 bytes on the given file.
![](https://i.imgur.com/3qL5JJY.png)
