# If you terminate the program, crunch and lzma creates annoying files like:
# .fuse_hidden00000.....

# "lsof .fuse_hidden*" gives you:

# COMMAND    PID USER   FD   TYPE DEVICE SIZE/OFF   NODE NAME
# crunch  378333 root    3u   REG   8,33 26562560 204878 .fuse_hidden00000.....

# Solution:

# Gets PIDs of ".fuse_hidden*" files, then kills them.
kill $(ps aux | lsof .fuse_hidden* | awk '{print $2}' | sed -n '1!p');
rm .fuse_hidden*; # Removes the files.

# If lines above did not fix, this is the last bullet.
# Because; terminal calls program, program calls crunch and lzma, so lines
# above done but caller terminal not terminated. Because of this, crunch and
# lzma did not stop. They spawns again and again.
exit; # The expanding bullet. Terminates the terminal (caller).
