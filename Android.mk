LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),CPH1955)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
