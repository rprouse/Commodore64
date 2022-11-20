include ../binaries.mk

.DEFAULT_GOAL := default

BUILD_FOLDER=$(abspath ../../bin/asm)
ifeq ($(OS),Windows_NT)
	BUILD_FOLDER := $(subst /,\,$(BUILD_FOLDER))
endif

DIR = $(abspath .)
INPUTS = $(wildcard $(DIR)/*.asm)

# Create the build folder
$(BUILD_FOLDER):
	$(MKDIR_BINARY) $(MKDIR_FLAGS) $(@)

# Compiles all ASM files in a given
$(INPUTS) : $(BUILD_FOLDER)
	$(CL65_BINARY) $(CL65_FLAGS) -o $(patsubst $(DIR)/%.asm,$(BUILD_FOLDER)/%.prg,$(@)) -l $(patsubst $(DIR)/%.asm,$(BUILD_FOLDER)/%.list,$(@)) $@

default: all

all: $(INPUTS)

clean:
	$(RM_BINARY) $(RM_FLAGS) $(BUILD_FOLDER)
