# b33ps
**Points- 300**

**Hint**
> It was given that the file is encoded with a modem of 1200 baud

**Write up**

We have been given a `flac` file, after a lot of analysis of the file including analysing the spectogram.. we could't find anything interesting.

After a bit of googling we found this tool called `minimodem` 
> Minimodem is a command-line program which decodes (or generates) audio
> modem tones at any specified baud rate, using various framing protocols.
> It acts a general-purpose software FSK modem, and includes support for
> various standard FSK protocols such as Bell103, Bell202, RTTY, TTY/TDD,
> NOAA SAME, and Caller-ID.

we passed the flac through minimodem.
```
root@c0dbat:~/Downloads/CTF/OPCDE/b33ps# minimodem -f b33ps.flac 1200
### CARRIER 1200 @ 1200.0 Hz ###
H4sIAAd6cFYAAwvJSMzLLlZIyy9SKMhJrMzMS1dwDnHTU1BwTiwoKS0C8dNyEtOLFTKBikrzFBUUPFKLUkG8yvzSIrCclQKYqk4yNi6ITzIwKIgvzgCRKYnx5SBGLQA4hOrLZAAAAA==
### NOCARRIER ndata=140 confidence=4.847 ampl=1.001 bps=1200.00 (rate perfect) ###
```

That looks like base64, so we decoded that.
```
root@c0dbat:~/Downloads/CTF/OPCDE/b33ps# echo "H4sIAAd6cFYAAwvJSMzLLlZMzMS1dwDnHTU1BwTiwoKS0C8dNyEtOLFTKBikrzFBUUPFKLUkG8yvzSIrCclQKYqk4yNi6ITzIwKIgvzgCRKYnx5SBGLQA4hOrLZAAAAA==" | base64 -d >> decoded
```
Lets look at the file signature of `decoded`

```
root@c0dbat:~/Downloads/CTF/OPCDE/b33ps# xxd decoded
00000000: 1f8b 0800 077a 7056 0003 0bc9 48cc cb2e  .....zpV....H...
00000010: 5648 cb2f 5228 c849 accc cc4b 5770 0e71  VH./R(.I...KWp.q
00000020: d353 5070 4e2c 2829 2d02 f1d3 7212 d38b  .SPpN,()-...r...
00000030: 1532 818a 4af3 1415 143c 528b 5241 bcca  .2..J....<R.RA..
00000040: fcd2 22b0 9c95 0298 aa4e 3236 2e88 4f32  .."......N26..O2
00000050: 3028 882f ce00 9129 89f1 e520 462d 0038  0(./...)... F-.8
00000060: 84ea cb64 0000 00                        ...d...
```
Ohh thats a gzip file.. so we extract it to find this:
`Thanks for playing CTF.  Capturing flags is fun!  Here is your flag:  flag{b33p_b00p_sh00p_da_wh00p}`
