#!/bin/sh


#for quanzhi R818
#OUT_PATH=${PWD}
#SRC_PATH=${PWD}/u-boot-2018

#for all
#find -L ${SRC_PATH} -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java" | grep -vi "${SRC_PATH}/arch/" | grep -vi "${SRC_PATH}/board/" >${OUT_PATH}/cscope.files
#find -L ${SRC_PATH}/arch/arm -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java" | grep -vi "${SRC_PATH}/arch/arm/mach" >>${OUT_PATH}/cscope.files


#for quanzhi R818
#find -L ${SRC_PATH}/arch/arm/mach-sunxi -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"| grep -vi '\.git' >>${OUT_PATH}/cscope.files
#find -L ${SRC_PATH}/board/sunxi -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"| grep -vi '\.git' >>${OUT_PATH}/cscope.files

echo "For create ctags and cscope databases.."
#ctags -L ${OUT_PATH}/cscope.files -f ${OUT_PATH}/tags && cscope -bkq
echo "Done!!"

