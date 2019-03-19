# bin_mirrors

**Points- 300**

**Description**
> A strange character wants to help us escape the Matrix but he is missing a key that will allow him to use a secret phone line that will transport us out of it. Can you give him what he needs to get the flag...I mean...key?
Flag is in format: flag{...}

**Write up**

Lets try to run the given ELF File.

![](https://i.imgur.com/ttwpL9b.png)

Hmmmm... Lets try opening up this file in Ghidra and decompile it.

```

/* WARNING: Could not reconcile some variable overlaps */

undefined4 main(int param_1,int param_2)

{
  undefined4 uVar1;
  size_t __size;
  char local_5e [50];
  int local_2c;
  void *local_28;
  undefined4 local_24;
  undefined8 local_20;
  int local_14;
  undefined4 *local_10;
  
  local_10 = &param_1;
  puts("*******************************************************************************");
  puts("[*] Hello there...");
  puts(
      "[*] I would like to show you the path that will allow you to exit the Matrix. Unfortunately,I cannot find the file with the key to the secret phone line"
      );
  if (param_1 < 3) {
    puts("[*] I was hoping you could help but...I need more than that");
    puts("[*] Please try again");
    uVar1 = 0xffffffff;
  }
  else {
    if (param_1 < 4) {
      local_14 = atoi(*(char **)(param_2 + 4));
      if (local_14 < 10) {
        puts("[*] I was hoping you could help but...that first tool does not work");
        puts("[*] Please try again");
        uVar1 = 0xffffffff;
      }
      else {
        puts("[*] Perfect! Let me see if that works...");
        if (local_14 == 0x7a69) {
          local_20 = i_func(0x7a69);
          sprintf(local_5e,"%llu",(int)local_20,(int)((ulonglong)local_20 >> 0x20));
          __size = strlen(*(char **)(param_2 + 8));
          malloc(__size);
          local_24 = *(undefined4 *)(param_2 + 8);
          local_28 = (void *)v_func(local_24);
          local_2c = c_func(local_5e,local_28);
          if (local_2c == 0) {
            printf("[*] We got it! The flag...I mean...key...is: flag{");
            r_func(local_28);
            puts("}");
            puts("[*] Now let\'s exit the Matrix");
          }
          else {
            puts("[*] I got the tools to read the key, but the pieces are not matching");
          }
          puts("*******************************************************************************");
          free(local_28);
          uVar1 = 0;
        }
        else {
          puts("[*] I think we are making progress, but it can\'t be that easy...");
          uVar1 = 0xffffffff;
        }
      }
    }
    else {
      puts("[*] I was hoping you could help but...I dont know what to do with all that");
      puts("[*] Please try again");
      uVar1 = 0xffffffff;
    }
  }
  return uVar1;
}
```
Looking at the `main` function we can see that the program expects us to input 2 parameters. 
From line 39 we can see that the first parameter is compared to `0x7a69` which is the hex for `31337`.

Now trying to run the ELF with first param as 31337 we get this.
![](https://i.imgur.com/bcZ9LP4.png)

Surfing the binary to find the 2nd parameter was unsucessful.

 Opening up `r_func` and looking at the parameter passed on to each `i_func` function we can see interesting values.
 ![](https://i.imgur.com/iirJkei.png)
 
 Trying to decode the hex values individually we get, redpill_truth.
 And yes that is our flag.
 `flag: flag{redpill_truth}`
 
