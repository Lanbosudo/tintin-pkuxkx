#!/usr/bin/env python

from sys import stdin, stdout

while True:
    s = stdin.read(512 - 8)
    if not s:
        break
    s = s.replace("\x90", "\x1bP")
    s = s.replace("\x9c", "\x1b\x1b\\\x1bP\\")
    s = s.replace("\x1b\\", "\x1b\x1b\\\x1bP\\")
    stdout.write("\x1bP")
    stdout.write(s)
    stdout.write("\x1b\\")
    stdout.flush()

