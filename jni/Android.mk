LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := vmeerd
LOCAL_SRC_FILES := vmeerd.cpp
LOCAL_LDLIBS    := -llog
include $(BUILD_EXECUTABLE)
