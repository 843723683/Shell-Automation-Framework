#!/usr/bin/env bash

# ----------------------------------------------------------------------
# Filename:   man.sh 
# Version:    1.0
# Date:       2021/06/21
# Author:     Lz
# Email:      lz843723683@gmail.com
# History：     
#             Version 1.0, 2021/06/21
# Function:   man 功能验证
# Out:        
#             0 => TPASS
#             1 => TFAIL
#             2 => TCONF
# ----------------------------------------------------------------------

# 本次测试涉及的命令
CmdsExist_Env_LTFLIB="man ls"


## TODO : 个性化,初始化
#   Out : 0=>TPASS
#         1=>TFAIL
#         2=>TCONF
TestInit(){
	true
}


## TODO : 清理函数
#   Out : 0=>TPASS
#         1=>TFAIL
#         2=>TCONF
TestClean(){
	true
}


## TODO : 测试用例
testcase_1(){
	man ls > /dev/null
	CommRetParse_LTFLIB "man ls"
}

## TODO : 测试用例集
#   Out : 0=>TPASS
#         1=>TFAIL
#         2=>TCONF
Testsuite(){
	testcase_1

	return $TPASS
}


#----------------------------------------------#

source "${LIB_LTFLIB}"
Main_LTFLIB $@
