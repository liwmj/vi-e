@echo off

set i_AUTHOR=Wim Li ^<liwangmj@gmail.com^> (http://liwangmj.com)
set i_ORGANIZATION=Oneiric Tiger.
set i_LICENSE=GNU General Public License Version 2

set i_ISDEBUG=0
set i_RUN_PRE_MAKE=0

rem ########################## C/C++ 项目配置 #################################
set i_PROJECTPATH=%cd%
set i_PROJECTBUILD=%cd%
set i_PROJECTBIN=%cd%\bin

set i_APPNAME=main.exe
set i_APP_PREFIX_PARAM=
set i_APP_SUFFIX_PARAM=

set i_BUILDDEBUG_TOOL=make -j4
set i_BUILDRELEASE_TOOL=make -j4
set i_CLEAN_TOOL=make clean
set i_DEBUG_TOOL=

set i_SEARCHPATH=%cd%
set i_SEARCHNAME=['src', 'Src', 'SRC', 'inc', 'Inc', 'INC', 'source', 'Source', 'SOURCE', 'include', 'Include', 'INCLUDE']

rem ########################## Golang 项目配置 ################################
set GOPATH=%cd%
set GOBIN=%cd%

set i_GOAPPNAME=main.exe
set i_GOAPP_PREFIX_PARAM=
set i_GOAPP_SUFFIX_PARAM=

set i_GOBUILDDEBUG_TOOL=go install -v -gcflags "-N -l" ./...
set i_GOBUILDRELEASE_TOOL=go install -v -ldflags "-s -w" ./...
set i_GOCLEAN_TOOL=go clean -i ./...
set i_GODEBUG_TOOL=

set i_GOTEST_TOOL=go test -v ./...

rem ###########################################################################

set PATH=%i_PROJECTPATH%;%i_PROJECTBUILD%;%i_PROJECTBIN%;%i_SEARCHPATH%;%GOPATH%;%GOBIN%;%PATH%
start gvim.exe

exit /b 0

