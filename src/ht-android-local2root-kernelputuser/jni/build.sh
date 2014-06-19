#!/bin/bash

sdk=/opt/android-dev/android-ndk-r9d

cp runner.mk Android.mk

echo -e "Compiling runner...\n"
$sdk/ndk-build

echo -e "Generating runner header...\n"
./gen_runner.py ../libs/armeabi/runner

cp put_user.mk Android.mk
echo -e "Compiling all...\n"
$sdk/ndk-build

