intermediates := $(local-intermediates-dir)

SRC := $(call my-dir)/$(addprefix bdroid_, $(addsuffix .txt,$(basename $(TARGET_DEVICE))))
GEN := $(intermediates)/buildcfg.h
TOOL := $(call my-dir)/../tools/gen-buildcfg.sh

$(GEN): PRIVATE_PATH := $(call my-dir)
$(GEN): PRIVATE_CUSTOM_TOOL = $(TOOL) $< $@
$(GEN): $(SRC)  $(TOOL)
	$(transform-generated-source)

LOCAL_GENERATED_SOURCES += $(GEN)
