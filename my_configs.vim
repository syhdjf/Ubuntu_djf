
 "djf add for chinese language
 set helplang=cn
 "Get out of VI's compatible mode..
 set nocompatible
 "显示行号
 set number

"-- Cscope setting --
     if has("cscope")
         set csprg=/usr/bin/cscope        " 指定用来执行cscope的命令
         set csto=0                        " 设置cstag命令查找次序：0先找cscope数据库再找标签文件；1先找标签文件再找cscope数据库
         set cst                            " 同时搜索cscope数据库和标签文件
         set cscopequickfix=s-,c-,d-,i-,t-,e-    " 使用QuickFix窗口来显示cscope查找结果
         set nocsverb
         if filereadable("cscope.out")    " 若当前目录下存在cscope数据库，添加该数据库到vim
             cs add cscope.out
         else "else search cscope.out elsewhere
             let cscope_file=findfile("cscope.out", ".;")
             let cscope_pre=matchstr(cscope_file, ".*/")
             if !empty(cscope_file) && filereadable(cscope_file)
                 exe "cs add" cscope_file cscope_pre
             endif
         endif
         set csverb
     endif

