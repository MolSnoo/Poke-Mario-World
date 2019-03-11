This patch comes in two forms xkas and asar.  Please follow set up for the 
appropriate assembler.  IT IS EXTREMELY RECOMMENDED TO USE ASAR.  Asar will use
less freespace and is easier to use.

This README will be broken into a how to patch and a hot to use section.  I will
also add instructions on importing old levelcode.asm files at the end of the 
README.

Patching:

asar instructions:
1) Open asar_patch.asm.
2) Find the section labeled "hijack list".
3) Set any hijacks you don't need to "!false". (Do NOT do this with an old ROM)
4) Save and patch the patch with "asar.exe asar_patch.asm smw.smc".
5) Enjoy.
Note) Disabling global hijacks will also disable sprite hijacks.

xkas instructions:
1) Open xkas_patch.asm.
2) Scroll down to the block of incsrc's.
3) Delete the clusters of hijacks you don't want.
4) If you want to remove sprite hijacks you must also remove global hijacks.
5) Scroll back up to freespace.
6) Set freespace for every used hijack.
7) Find the RATS banks defines, change these to encompass the freespace you set.
8) Save and patch the patch with "xkas.exe xkas_patch.asm smw.smc".
9) Enjoy.

Using the patch:
As a user of the patch you only need to edit files in the code directory.  Find
the file with the name of the hijack you need, open it, find the appropriate 
label, and place your code there.  All code starts with A and XY set to 8 bits
and must end with them being reset to 8 bits.  No other restrictions exist.

Importing old levelASM code:
Importing old code is easy, just replace level_code.asm with your old 
levelCode.asm. and do the same for init.  Be sure to run xkasanti to
remove your old levelASM if you are using the same ROM.

Thats all there is to it!  Enjoy the power of uberASM.

Change log:
V1.1
Bugfix: Fixed init/main gamemode code
Bugfix: Fixed sprite execution code
