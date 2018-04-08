# Dird 
**Points- 300**

**Description**
> Dirds are birds with dog heads. I don't think they have thumbs. though.

**Write up**

We have been given a dog+bird `jpg` file.

We can't find anything interesting using `strings -a` or `binwalk`, so we run `exiftool` on the file to get the metadata of the JPEG:
```
# ./exiftool dird.jpg
ExifTool Version Number         : 10.88
File Name                       : dird.jpg
Directory                       : .
File Size                       : 65 kB
File Modification Date/Time     : 2017:04:05 18:27:19-04:00
File Access Date/Time           : 2018:04:06 03:38:58-04:00
File Inode Change Date/Time     : 2018:04:06 03:38:46-04:00
File Permissions                : rw-r--r--
File Type                       : JPEG
File Type Extension             : jpg
MIME Type                       : image/jpeg
Exif Byte Order                 : Big-endian (Motorola, MM)
Thumbnail Offset                : 56
Thumbnail Length                : 7802
Image Width                     : 600
Image Height                    : 400
Encoding Process                : Baseline DCT, Huffman coding
Bits Per Sample                 : 8
Color Components                : 3
Y Cb Cr Sub Sampling            : YCbCr4:4:4 (1 1)
Image Size                      : 600x400
Megapixels                      : 0.240
Thumbnail Image                 : (Binary data 7802 bytes, use -b option to extract)
```

Hmm lets extract the binary data using `-b` and store it in a file `dirb`

` # ./exiftool -b dird.jpg >> dirb  `

Now lets open this in `hxd` or you favourite hex editor and remove all the unwated data at the top and save it as a `.jpg` file.

Ohh look!!

![](https://i.imgur.com/6NqShM5.jpg)
