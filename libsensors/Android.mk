LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := sensors.GT-I8000
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
#LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := sensors.c
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
