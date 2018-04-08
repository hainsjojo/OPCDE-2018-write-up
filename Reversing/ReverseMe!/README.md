# ReverseMe!

**Points- 200**

**Description**
> I haven't seen a programming language like this before.EncryptedVB????

**Write up**

So we are fiven an encrypted `.vbe` file which could be easily decrypted by any vbe decrypter.. Online tools seems to work fine too.

```
user_flag = InputBox("Input flag:", "Reverse Me!")

If user_flag = "flag{Encrypted_VBscript__What_a_Country}" Then
  MsgBox "That is correct!", 64, "Yay!"
Else
  MsgBox "That is not correct :(", 16, "Nah"
End If
```
flag:flag{Encrypted_VBscript__What_a_Country}
