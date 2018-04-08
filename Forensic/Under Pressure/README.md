# Under pressure
**Points- 100**

**Description**
> I have been asked to explain the difference between encoding and compression in a job interview. I huess people confuse the two?

**Write up**

Lets look at the contents of the `.txt` file

```
# cat UnderPressure.txt 
TmljZSB3b3JrIGRlY29kaW5nIHRoaXMuIFRoaW5ncyBzdGlsbCBmZWVsIGEgbGl0dGxlIGNvbXByZXNzZWQuCh+LCAi3Dt1YAANjb21wcmVzc2VkAEvLSUyvds7PLSgyLi7ONMiLT8xziXfNSzZIycxzj08MSo1PyXRzMy4yziuJL8nI9Es3reUCABG/Ca00AAAA
```

Hmmm that looks like base64 isn't it?

```
root@c0dbat:~/Downloads/CTF/OPCDE# cat UnderPressure.txt | base64 -d >> decoded
root@c0dbat:~/Downloads/CTF/OPCDE# cat decoded
Nice work decoding this. Things still feel a little compressed.
��XcompressedK�IL�v��-(2..�4ȋO�s�w�K6H��s�OJ�O�ts3.2�+�/���K7���	�4

```

Now lets open the `decoded` file in `hxd`

![](https://i.imgur.com/719ukNQ.png)

Ohh look it's a gzip compressed file.

Now lets remove the unwated data on top of it and name it `decoded.zip`

we get a file named `compressed` with flag in it. `flag{Compr3ssi0n_anD_Enc0dinG_aRe_diFF3r3nt_thiNg5}
`
