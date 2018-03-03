# ====================== 自定义宏 产品信息==============================
#!define PRODUCT_NAME           		"版权家"
#!define PRODUCT_PATHNAME           	"bqj"     #安装卸载项用到的KEY
#!define INSTALL_APPEND_PATH         "bqj"     #安装路径追加的名称
#!define INSTALL_DEFALT_SETUPPATH    ""       #默认生成的安装路径
#!define EXE_NAME               		"BanQuanJia_3.0.exe"
#!define PRODUCT_VERSION        		"1.0.0.0"
#!define PRODUCT_PUBLISHER      		"全版权科技有限公司"
#!define PRODUCT_LEGAL          		"Copyright (C) 2018 版权家"
#!define INSTALL_OUTPUT_NAME    		"bqj_Setup_${PRODUCT_VERSION}.exe"
#!define LICENSE_NAME                "版权家用户许可协议"

# ====================== 自定义宏 产品信息==============================
!define PRODUCT_NAME           		"版权家"
!define PRODUCT_PATHNAME           	"bqj"     #安装卸载项用到的KEY
!define INSTALL_APPEND_PATH         "bqj"     #安装路径追加的名称
!define INSTALL_DEFALT_SETUPPATH    ""       #默认生成的安装路径
!define EXE_NAME               		"牛牛截图.exe"
!define PRODUCT_VERSION        		"1.0.0.0"
!define PRODUCT_PUBLISHER      		"全版权科技有限公司"
!define PRODUCT_LEGAL          		"Copyright (C) 2018 版权家"
!define INSTALL_OUTPUT_NAME    		"版权家_Setup_${PRODUCT_VERSION}.exe"
!define LICENSE_NAME                "版权家客户端软件使用协议"

# ====================== 自定义宏 安装信息==============================
!define INSTALL_7Z_PATH 	   		"..\app.7z"
!define INSTALL_7Z_NAME 	   		"app.7z"
!define INSTALL_RES_PATH       		"skin.zip"
!define INSTALL_LICENCE_FILENAME    "license.txt"
!define INSTALL_ICO 			"install.ico"
!define UNINSTALL_ICO 			"unistall.ico"


!include "ui_songliwu.nsh"

# ==================== NSIS属性 ================================

# 针对Vista和win7 的UAC进行权限请求.
# RequestExecutionLevel none|user|highest|admin
RequestExecutionLevel admin

#SetCompressor zlib

; 安装包名字.
Name "${PRODUCT_NAME}"

# 安装程序文件名.

OutFile "..\..\Output\${INSTALL_OUTPUT_NAME}"

InstallDir "1"

# 安装和卸载程序图标
Icon              "${INSTALL_ICO}"
UninstallIcon     "${UNINSTALL_ICO}"

