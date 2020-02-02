DEBUG=0
GO_EASY_ON_ME=1
#TARGET = simulator:clang:11.0
#TARGET = macosx
#TARGET = iphone:clang::6.0
export TARGET = iphone:clang:13.0:9.3
export ARCHS=armv7 arm64 arm64e
#export ARCHS=x86_64 
include $(THEOS)/makefiles/common.mk
TOOL_NAME = classdump-dyld
classdump-dyld_FILES = main.xm
#classdump-dyld_LDFLAGS = -Wl,-segalign,0x4000
classdump-dyld_CODESIGN_FLAGS = -Sent.plist
include $(THEOS)/makefiles/tool.mk
include $(THEOS)/makefiles/library.mk
SUBPROJECTS += classdumpdyldlib
include $(THEOS)/makefiles/aggregate.mk
