#!/bin/bash

sleep 2
xdotool type --delay 200 '#include <linux/errno.h>\n
#include <sys/syscall.h>\n
#include <errno.h>\n
\n
extern void *sys_call_table[];\n

sc()\n
{ // system call number 165 doesn't exist at this time.\n
    __asm__("movl $165,%eax\n int $0x80");\n
}\n

main(\n
{\n
    errno = -sc();\n
    perror("test of invalid syscall");\n
}\n
'\n
