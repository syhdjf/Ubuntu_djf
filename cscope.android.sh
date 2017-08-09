#!/bin/sh
OUT_PATH=${PWD}

#for quanzhi R58
#SRC_PATH=${PWD}

#for rockchip RK3188
#SRC_PATH=${PWD}/radxa_rock_android4-4


if [ -d ${OUT_PATH} ];
then
    echo "Use current directory \"${OUT_PATH}\""
else
    echo "mkdir \"${OUT_PATH}\""
    mkdir ${OUT_PATH}
fi

if [ -d ${SRC_PATH}/frameworks -a -d ${SRC_PATH}/packages -a -d ${SRC_PATH}/hardware -a -d ${SRC_PATH}/system ];
then
    echo "Found framework packages hardware and system directory!!"
    find -L ${SRC_PATH}/frameworks -name "*.h" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"|grep -vi '\.git' >${OUT_PATH}/cscope.files
    echo "framework scann finish!"
    find -L ${SRC_PATH}/packages -name "*.h" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"|grep -vi '\.git' >>${OUT_PATH}/cscope.files
    echo "packages scann finish!!"
    find -L ${SRC_PATH}/hardware -name "*.h" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"|grep -vi '\.git' >>${OUT_PATH}/cscope.files
    echo "hardware scann finish!!"
    find -L ${SRC_PATH}/system -name "*.h" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"|grep -vi '\.git' >>${OUT_PATH}/cscope.files
    echo "sytstem scann finish!!"
 
#for quanzhi R58
    #find -L ${SRC_PATH}/device/softwinner/octopus-f1 -name "*.h" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"|grep -vi '\.git' >>${OUT_PATH}/cscope.files
    #find -L ${SRC_PATH}/device/softwinner/octopus-common -name "*.h" -o -name "*.cpp" -o -name "*.cc" -o -name "*.c" -o -name "*.xml" -o -name "*.mk" -o -name "*.java"|grep -vi '\.git' >>${OUT_PATH}/cscope.files
    #echo "device scann finish!!"
else
    echo "Please run this script under the root of your project!!!"
fi
echo "For create ctags and cscope databases.."
#ctags -L ${OUT_PATH}/cscope.files -f ${OUT_PATH}/tags && cscope -bkq
echo "Done!!"

