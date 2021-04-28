#!/bin/bash
#打印文件全部内容
function typeFileContent(){
	awk '{print $0}' awk.txt
}

# 分割行并打印某列
function splitAndTypeColumnN(){
	awk -F ' ' '{print $2}' awk.txt
}

# 以空格分割行并打印带行号的最后一列
function splitBySpaceAndTypeColumnNoAndLastColumn(){
	awk '{print NR ")" $NF}' awk.txt
	#awk '{print FILENAME "的" NR ")" $NF}' awk.txt
}

# 以空格分割文件打印奇数行的最后一列
function splitBySpaceAndTypeOddRowOfLastColumn(){
	awk 'NR % 2 == 1 {print $NF}' awk.txt
}


$1
