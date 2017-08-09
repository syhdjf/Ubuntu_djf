#!/bin/sh
OUT_PATH=${PWD}
SRC_PATH=${PWD}

if [ -d ${OUT_PATH} ];
then
    echo "Use current directory \"${OUT_PATH}\""
else
    echo "mkdir \"${OUT_PATH}\""
    mkdir ${OUT_PATH}
fi


find -L ${SRC_PATH} -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java" | grep -vi "${OUT_PATH}/arch/" >${OUT_PATH}/cscope.files

find -L ${SRC_PATH}/arch/arm -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java" | grep -vi "${OUT_PATH}/arch/arm/mach" | grep -vi "${OUT_PATH}/arch/arm/plat" >>${OUT_PATH}/cscope.files

#for rockchip RK3188
#find -L ${SRC_PATH}/arch/arm/mach-rk3188 -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"| grep -vi '\.git' | grep -vi "${OUT_PATH}/arch/arm/mach-rk3188/board-" >>${OUT_PATH}/cscope.files

#echo ${OUT_PATH}/arch/arm/mach-rk3188/board-rk3188-box.c >> ${OUT_PATH}/cscope.files

#find -L ${SRC_PATH}/arch/arm/mach-rk30 -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"|grep -vi '\.git' | grep -vi "${OUT_PATH}/arch/arm/mach-rk30/board-" >>${OUT_PATH}/cscope.files

#find -L ${SRC_PATH}/arch/arm/plat-rk -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"|grep -vi '\.git' >>${OUT_PATH}/cscope.files


#for quanzhi R58
#find -L ${SRC_PATH}/arch/arm/mach-sunxi -name "*.h" -o -name "*.s" -o -name "*.S" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"| grep -vi '\.git' >>${OUT_PATH}/cscope.files

echo "For create ctags and cscope databases.."
#ctags -L ${OUT_PATH}/cscope.files -f ${OUT_PATH}/tags && cscope -bkq
echo "Done!!"

