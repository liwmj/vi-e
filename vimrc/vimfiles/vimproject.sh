#!/usr/bin/env bash

export i_AUTHOR='Wim Li <liwangmj@gmail.com> (http://liwangmj.com)'
export i_ORGANIZATION='Oneiric Tiger.'
export i_LICENSE='GNU General Public License Version 2'

export i_ISDEBUG=0
export i_RUN_PRE_MAKE=0

########################## C/C++ 项目配置 #################################
export i_PROJECTPATH=$PWD
export i_PROJECTBUILD=$PWD
export i_PROJECTBIN=${PWD}/bin

export i_APPNAME='main'
export i_APP_PREFIX_PARAM=
export i_APP_SUFFIX_PARAM=

export i_BUILDDEBUG_TOOL='make -j4'
export i_BUILDRELEASE_TOOL='make -j4'
export i_CLEAN_TOOL='make clean'
export i_DEBUG_TOOL=

export i_SEARCHPATH=
export i_SEARCHNAME="['src', 'Src', 'SRC', 'inc', 'Inc', 'INC', 'source', 'Source', 'SOURCE', 'include', 'Include', 'INCLUDE']"

########################## Golang 项目配置 ################################
export GOPATH=$PWD
export GOBIN=$PWD

export i_GOAPPNAME='main'
export i_GOAPP_PREFIX_PARAM=
export i_GO_APP_SUFFIX_PARAM=

export i_GOBUILDDEBUG_TOOL='go install -v -gcflags "-N -l" ./...'
export i_GOBUILDRELEASE_TOOL='go install -v -ldflags "-s -w" ./...'
export i_GOCLEAN_TOOL='go clean -i ./...'
export i_GODEBUG_TOOL=

export i_GOTEST_TOOL='go test -v ./...'

###########################################################################

export PATH=$i_PROJECTPATH:$i_PROJECTBUILD:$i_PROJECTBIN:$i_SEARCHPATH:$GOPATH:$GOBIN:$PATH
vim

exit 0

