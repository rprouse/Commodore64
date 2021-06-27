include ../binaries.mk

.DEFAULT_GOAL := default

BUILD_FOLDER=$(abspath ../../bin/retro_game_dev)
ifeq ($(OS),Windows_NT)
	BUILD_FOLDER := $(subst /,\,$(BUILD_FOLDER))
endif

# Create the build folder
$(BUILD_FOLDER):
	$(MKDIR_BINARY) $(MKDIR_FLAGS) $(@)

# Compiles all ASM files in a given
chapter6 : $(BUILD_FOLDER)
	$(CL65_BINARY) $(CL65_FLAGS) -o $(BUILD_FOLDER)/chapter6.prg -l $(BUILD_FOLDER)/chapter6.list chapter6/gameMain.asm

default: clean all

all: chapter6

clean:
	$(RM_BINARY) $(RM_FLAGS) $(BUILD_FOLDER)
