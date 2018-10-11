#!/bin/sh

# CLASSIC OS BUILD SCRIPT FOR CSUD DRIVERS

#    Copyright 2018 Alexandru-Paul Copil

#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at

#        http://www.apache.org/licenses/LICENSE-2.0

#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.


echo "==== SUM: CURRENT"
md5 libcsud.a

echo "==== BUILDING: libcsud.a"
make driver type=CLASSIC target=RPI config=FINAL GNU=arm-none-eabi-

echo "==== SUM: NEW"
md5 libcsud.a

echo "==== SUM: IN USE"
md5 ../../libs/libcsud.a

cp libcsud.a ../../libs/libcsud.a

echo "==== UPDATING: libs/libcsud.a"
