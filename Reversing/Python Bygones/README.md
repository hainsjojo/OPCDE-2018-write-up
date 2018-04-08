# Python Bygones
**Points- 400**

**Description**
> It's only 3 line of code.

**Write up**

we are given an obfuscated python program. 

When running the program it asks us for the flag.. Trying to analyze it took us no where.

This challenge can be solved by using `ltrace`.

`root@c0dbat:~/Downloads/CTF/OPCDE/python-bygones# ltrace python python-bygones.py`
it stops when it reaches `read(0` we sumbit the value `flag`

which gives out this:
```
strcmp("_", "_")                                                                                                                  = 0
memset(0x7f52f533ea68, '\0', 8)                                                                                                   = 0x7f52f533ea68
memcpy(0x7f52f534043c, "d", 1)                                                                                                    = 0x7f52f534043c
memcpy(0x7f52f534043d, "}", 1)                                                                                                    = 0x7f52f534043d
memcpy(0x7f52f5340464, "3", 1)                                                                                                    = 0x7f52f5340464
memcpy(0x7f52f5340465, "d}", 2)                                                                                                   = 0x7f52f5340465
memcpy(0x7f52f53360b4, "t", 1)                                                                                                    = 0x7f52f53360b4
memcpy(0x7f52f53360b5, "3d}", 3)                                                                                                  = 0x7f52f53360b5
memcpy(0x7f52f53360e4, "a", 1)                                                                                                    = 0x7f52f53360e4
memcpy(0x7f52f53360e5, "t3d}", 4)                                                                                                 = 0x7f52f53360e5
memcpy(0x7f52f53360b4, "r", 1)                                                                                                    = 0x7f52f53360b4
memcpy(0x7f52f53360b5, "at3d}", 5)                                                                                                = 0x7f52f53360b5
memcpy(0x7f52f53360e4, "r", 1)                                                                                                    = 0x7f52f53360e4
memcpy(0x7f52f53360e5, "rat3d}", 6)                                                                                               = 0x7f52f53360e5
memcpy(0x7f52f53360b4, "3", 1)                                                                                                    = 0x7f52f53360b4
memcpy(0x7f52f53360b5, "rrat3d}", 7)                                                                                              = 0x7f52f53360b5
memcpy(0x7f52f53360e4, "v", 1)                                                                                                    = 0x7f52f53360e4
memcpy(0x7f52f53360e5, "3rrat3d}", 8)                                                                                             = 0x7f52f53360e5
memcpy(0x7f52f53360b4, "o", 1)                                                                                                    = 0x7f52f53360b4
memcpy(0x7f52f53360b5, "v3rrat3d}", 9)                                                                                            = 0x7f52f53360b5
memcpy(0x7f52f53360e4, "_", 1)                                                                                                    = 0x7f52f53360e4
memcpy(0x7f52f53360e5, "ov3rrat3d}", 10)                                                                                          = 0x7f52f53360e5
memcpy(0x7f52f53352bc, "e", 1)                                                                                                    = 0x7f52f53352bc
memcpy(0x7f52f53352bd, "_ov3rrat3d}", 11)                                                                                         = 0x7f52f53352bd
memcpy(0x7f52f5335284, "r", 1)                                                                                                    = 0x7f52f5335284
memcpy(0x7f52f5335285, "e_ov3rrat3d}", 12)                                                                                        = 0x7f52f5335285
memcpy(0x7f52f533524c, "a", 1)                                                                                                    = 0x7f52f533524c
memcpy(0x7f52f533524d, "re_ov3rrat3d}", 13)                                                                                       = 0x7f52f533524d
memcpy(0x7f52f5335214, "_", 1)                                                                                                    = 0x7f52f5335214
memcpy(0x7f52f5335215, "are_ov3rrat3d}", 14)                                                                                      = 0x7f52f5335215
memcpy(0x7f52f53351dc, "s", 1)                                                                                                    = 0x7f52f53351dc
memcpy(0x7f52f53351dd, "_are_ov3rrat3d}", 15)                                                                                     = 0x7f52f53351dd
memcpy(0x7f52f53351a4, "r", 1)                                                                                                    = 0x7f52f53351a4
memcpy(0x7f52f53351a5, "s_are_ov3rrat3d}", 16)                                                                                    = 0x7f52f53351a5
memcpy(0x7f52f533516c, "3", 1)                                                                                                    = 0x7f52f533516c
memcpy(0x7f52f533516d, "rs_are_ov3rrat3d}", 17)                                                                                   = 0x7f52f533516d
memcpy(0x7f52f5335134, "b", 1)                                                                                                    = 0x7f52f5335134
memcpy(0x7f52f5335135, "3rs_are_ov3rrat3d}", 18)                                                                                  = 0x7f52f5335135
memcpy(0x7f52f533ec54, "m", 1)                                                                                                    = 0x7f52f533ec54
memcpy(0x7f52f533ec55, "b3rs_are_ov3rrat3d}", 19)                                                                                 = 0x7f52f533ec55
memcpy(0x7f52f533ec94, "u", 1)                                                                                                    = 0x7f52f533ec94
memcpy(0x7f52f533ec95, "mb3rs_are_ov3rrat3d}", 20)                                                                                = 0x7f52f533ec95
memcpy(0x7f52f533ec54, "n", 1)                                                                                                    = 0x7f52f533ec54
memcpy(0x7f52f533ec55, "umb3rs_are_ov3rrat3d}", 21)                                                                               = 0x7f52f533ec55
memcpy(0x7f52f533ec94, "_", 1)                                                                                                    = 0x7f52f533ec94
memcpy(0x7f52f533ec95, "numb3rs_are_ov3rrat3d}", 22)                                                                              = 0x7f52f533ec95
memcpy(0x7f52f533ec54, "d", 1)                                                                                                    = 0x7f52f533ec54
memcpy(0x7f52f533ec55, "_numb3rs_are_ov3rrat3d}", 23)                                                                             = 0x7f52f533ec55
memcpy(0x7f52f533ec94, "n", 1)                                                                                                    = 0x7f52f533ec94
memcpy(0x7f52f533ec95, "d_numb3rs_are_ov3rrat3d}", 24)                                                                            = 0x7f52f533ec95
memcpy(0x7f52f533ec54, "a", 1)                                                                                                    = 0x7f52f533ec54
memcpy(0x7f52f533ec55, "nd_numb3rs_are_ov3rrat3d}", 25)                                                                           = 0x7f52f533ec55
memcpy(0x7f52f533ec94, "_", 1)                                                                                                    = 0x7f52f533ec94
memcpy(0x7f52f533ec95, "and_numb3rs_are_ov3rrat3d}", 26)                                                                          = 0x7f52f533ec95
memcpy(0x7f52f5321714, "s", 1)                                                                                                    = 0x7f52f5321714
memcpy(0x7f52f5321715, "_and_numb3rs_are_ov3rrat3d}", 27)                                                                         = 0x7f52f5321715
memcpy(0x7f52f53216cc, "r", 1)                                                                                                    = 0x7f52f53216cc
memcpy(0x7f52f53216cd, "s_and_numb3rs_are_ov3rrat3d}", 28)                                                                        = 0x7f52f53216cd
memcpy(0x7f52f5321714, "3", 1)                                                                                                    = 0x7f52f5321714
memcpy(0x7f52f5321715, "rs_and_numb3rs_are_ov3rrat3d}", 29)                                                                       = 0x7f52f5321715
memcpy(0x7f52f53216cc, "t", 1)                                                                                                    = 0x7f52f53216cc
memcpy(0x7f52f53216cd, "3rs_and_numb3rs_are_ov3rrat3d}", 30)                                                                      = 0x7f52f53216cd
memcpy(0x7f52f5321714, "t", 1)                                                                                                    = 0x7f52f5321714
memcpy(0x7f52f5321715, "t3rs_and_numb3rs_are_ov3rrat3d}", 31)                                                                     = 0x7f52f5321715
memcpy(0x7f52f53216cc, "3", 1)                                                                                                    = 0x7f52f53216cc
memcpy(0x7f52f53216cd, "tt3rs_and_numb3rs_are_ov3rrat3d}"..., 32)                                                                 = 0x7f52f53216cd
memcpy(0x7f52f5321714, "l", 1)                                                                                                    = 0x7f52f5321714
memcpy(0x7f52f5321715, "3tt3rs_and_numb3rs_are_ov3rrat3d"..., 33)                                                                 = 0x7f52f5321715
memcpy(0x7f52f53216cc, "{", 1)                                                                                                    = 0x7f52f53216cc
memcpy(0x7f52f53216cd, "l3tt3rs_and_numb3rs_are_ov3rrat3"..., 34)                                                                 = 0x7f52f53216cd
memcpy(0x7f52f532db44, "g", 1)                                                                                                    = 0x7f52f532db44
memcpy(0x7f52f532db45, "{l3tt3rs_and_numb3rs_are_ov3rrat"..., 35)                                                                 = 0x7f52f532db45
memcpy(0x7f52f532db94, "a", 1)                                                                                                    = 0x7f52f532db94
memcpy(0x7f52f532db95, "g{l3tt3rs_and_numb3rs_are_ov3rra"..., 36)                                                                 = 0x7f52f532db95
memcpy(0x7f52f532db44, "l", 1)                                                                                                    = 0x7f52f532db44
memcpy(0x7f52f532db45, "ag{l3tt3rs_and_numb3rs_are_ov3rr"..., 37)                                                                 = 0x7f52f532db45
memcpy(0x7f52f532db94, "f", 1)                                                                                                    = 0x7f52f532db94
memcpy(0x7f52f532db95, "lag{l3tt3rs_and_numb3rs_are_ov3r"..., 38)                                                                 = 0x7f52f532db95
free(0x562d28ae21e0)                                                                                                              = <void>
```
So it looks like the flag is flag{l3tt3rs_and_numb3rs_are_ov3rrat3d}
