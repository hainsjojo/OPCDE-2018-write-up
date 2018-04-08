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

Now lets download random png files from the web and have a look at its first 16 bytes.
![](https://i.imgur.com/shC1cqH.png)

So from our observation we can see that most pngs have the same first 16 bytes `89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52`


Lets find the key using this python program

```
import binascii, sys
def xor_strings(xs, ys):
	return "".join(chr(ord(x) ^ ord(y)) for x, y in zip(xs, ys))

string = sys.argv[1]
sinput = sys.argv[2]
if len(string) > len(sinput):
	sinput='0'*(len(string)-len(sinput))+sinput
elif len(sinput) > len(string):
	string='0'*(len(sinput)-len(string))+string
if len(string) % 2 != 0:
	string='0'+string
if len(sinput) % 2 != 0:
	sinput='0'+sinput
string = binascii.unhexlify("0b"+string)
sinput = binascii.unhexlify("0b"+sinput)
print binascii.hexlify(xor_strings(string,sinput))
```

```
root@c0dbat:~/Desktop# python xorstring.py E2124C6DD3A7A4E5CAF2588C8ECEBABF 89504E470D0A1A0A0000000D49484452
006b42022adeadbeefcaf25881c786feed
```
