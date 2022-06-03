#!/bin/bash


ytt -f bundle -f config-release | kbld --imgpkg-lock-output bundle/.imgpkg/images.yml -f-