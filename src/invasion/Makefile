include ../binaries.mk

.DEFAULT_GOAL := default

BUILD_FOLDER=$(abspath ../../bin/invasion)
ifeq ($(OS),Windows_NT)
	BUILD_FOLDER := $(subst /,\,$(BUILD_FOLDER))
endif

# Create the build folder
$(BUILD_FOLDER):
	$(MKDIR_BINARY) $(MKDIR_FLAGS) $(@)

invasion : $(BUILD_FOLDER)
	$(CL65_BINARY) $(CL65_FLAGS) -o $(BUILD_FOLDER)/invasion.prg -l $(BUILD_FOLDER)/invasion.list invasion.asm

default: clean all

all: invasion

clean:
	$(RM_BINARY) $(RM_FLAGS) $(BUILD_FOLDER)
