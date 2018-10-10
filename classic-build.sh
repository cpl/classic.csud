#/bin/sh

make driver type=DRIVER target=RPI config=FINAL GNU=arm-none-eabi- 1>build.log 2> builderr.log
cp libcsud.a ../../libs/
