ifeq ($(strip $(BOARD_USES_WRS_OMXIL_CORE)),true)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS := $(OMXLOG_CFLAGS) -DLOG_TAG=\"omx-avcdec\"
LOCAL_CPPFLAGS :=
LOCAL_LDFLAGS :=

LOCAL_SHARED_LIBRARIES := \
    libwrs_omxil_common \
    libva_videodecoder \
    libmixvbp \
    libmixvbp_h264 \
    liblog\
    libva \
    libva-android \

LOCAL_C_INCLUDES := \
    $(WRS_OMXIL_CORE_ROOT)/utils/inc \
    $(WRS_OMXIL_CORE_ROOT)/base/inc \
    $(WRS_OMXIL_CORE_ROOT)/core/inc/khronos/openmax/include \
    $(PV_INCLUDES) \
    $(TOP_DIR)/hardware/libhardware/include \
    $(TARGET_OUT_HEADERS)/libmixcodec \
    $(TARGET_OUT_HEADERS)/libva

LOCAL_SRC_FILES := \
    OMXComponentCodecBase.cpp\
    OMXVideoDecoderBase.cpp\
    OMXVideoDecoderAVC.cpp

LOCAL_COPY_HEADERS := \
    vabuffer.h

LOCAL_COPY_HEADERS_TO :=libva

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libOMXVideoDecoderAVC
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_CFLAGS := $(OMXLOG_CFLAGS) -DLOG_TAG=\"omx-wmvdec\"
LOCAL_CPPFLAGS :=
LOCAL_LDFLAGS :=

LOCAL_SHARED_LIBRARIES := \
    libwrs_omxil_common \
    libasfparser \
    libmixvbp_vc1 \
    libva_videodecoder \
    liblog \
    libva \
    libva-android

LOCAL_C_INCLUDES := \
    $(WRS_OMXIL_CORE_ROOT)/utils/inc \
    $(WRS_OMXIL_CORE_ROOT)/base/inc \
    $(WRS_OMXIL_CORE_ROOT)/core/inc/khronos/openmax/include \
    $(PV_INCLUDES) \
    $(TARGET_OUT_HEADERS)/libmixcodec \
    $(TARGET_OUT_HEADERS)/libva

LOCAL_SRC_FILES := \
    OMXComponentCodecBase.cpp\
    OMXVideoDecoderBase.cpp\
    OMXVideoDecoderWMV.cpp

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libOMXVideoDecoderWMV
include $(BUILD_SHARED_LIBRARY)

## for encode

include $(CLEAR_VARS)

LOCAL_CPPFLAGS :=
LOCAL_LDFLAGS :=

LOCAL_CFLAGS := $(OMXLOG_CFLAGS) -DLOG_TAG=\"omx-avcenc\"
LOCAL_SHARED_LIBRARIES := \
        libwrs_omxil_common \
	liblog \
        libva_videoencoder \
        libintelmetadatabuffer \
	libva \
	libva-android \
	libva-tpi \
        libutils

LOCAL_C_INCLUDES := \
    $(WRS_OMXIL_CORE_ROOT)/utils/inc \
    $(WRS_OMXIL_CORE_ROOT)/base/inc \
    $(WRS_OMXIL_CORE_ROOT)/core/inc/khronos/openmax/include \
    $(TOP)/frameworks/native/include/media/hardware \
    $(TARGET_OUT_HEADERS)/libmixcodec 	\
    $(TARGET_OUT_HEADERS)/libva

LOCAL_SRC_FILES := \
    OMXComponentCodecBase.cpp\
    OMXVideoEncoderBase.cpp\
    OMXVideoEncoderAVC.cpp

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libOMXVideoEncoderAVC
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)

LOCAL_CFLAGS := $(OMXLOG_CFLAGS) -DLOG_TAG=\"omx-h263enc\"
LOCAL_CPPFLAGS :=
LOCAL_LDFLAGS :=

LOCAL_SHARED_LIBRARIES := \
        libwrs_omxil_common \
	liblog \
        libva_videoencoder    \
        libintelmetadatabuffer \
	libva \
	libva-android \
	libva-tpi \
        libutils

LOCAL_C_INCLUDES := \
    $(WRS_OMXIL_CORE_ROOT)/utils/inc \
    $(WRS_OMXIL_CORE_ROOT)/base/inc \
    $(WRS_OMXIL_CORE_ROOT)/core/inc/khronos/openmax/include \
    $(TOP)/frameworks/native/include/media/hardware \
    $(TARGET_OUT_HEADERS)/libmixcodec 	\
    $(TARGET_OUT_HEADERS)/libva

LOCAL_SRC_FILES := \
    OMXComponentCodecBase.cpp\
    OMXVideoEncoderBase.cpp\
    OMXVideoEncoderH263.cpp

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libOMXVideoEncoderH263
include $(BUILD_SHARED_LIBRARY)




include $(CLEAR_VARS)

LOCAL_CFLAGS := $(OMXLOG_CFLAGS) -DLOG_TAG=\"omx-mpeg4enc\"
LOCAL_CPPFLAGS :=
LOCAL_LDFLAGS :=

LOCAL_SHARED_LIBRARIES := \
        libwrs_omxil_common \
	liblog \
        libva_videoencoder  \
        libintelmetadatabuffer \
	libva \
	libva-android \
	libva-tpi \
        libutils

LOCAL_C_INCLUDES := \
    $(WRS_OMXIL_CORE_ROOT)/utils/inc \
    $(WRS_OMXIL_CORE_ROOT)/base/inc \
    $(WRS_OMXIL_CORE_ROOT)/core/inc/khronos/openmax/include \
    $(TOP)/frameworks/native/include/media/hardware \
    $(TARGET_OUT_HEADERS)/libmixcodec 	\
    $(TARGET_OUT_HEADERS)/libva

LOCAL_SRC_FILES := \
    OMXComponentCodecBase.cpp\
    OMXVideoEncoderBase.cpp\
    OMXVideoEncoderMPEG4.cpp

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libOMXVideoEncoderMPEG4
include $(BUILD_SHARED_LIBRARY)


endif
