#! /bin/bash

gcc -c uuid.c
ar rvs libuuid.a uuid.o 
