
include ../binaries.mk

.DEFAULT_GOAL := default

BUILD_FOLDER=$(abspath ../../bin/$(NAME))
ifeq ($(OS),Windows_NT)
	BUILD_FOLDER := $(subst /,\,$(BUILD_FOLDER))
endif

DIR = $(abspath .)
INPUTS = $(wildcard $(DIR)/*.bas)

check:
	@echo "DIR = $(DIR)"
	@echo "INPUTS = $(INPUTS)"
	@echo "BUILD_FOLDER = $(BUILD_FOLDER)"

# Create the build folder
$(BUILD_FOLDER):
	$(MKDIR_BINARY) $(MKDIR_FLAGS) $(@)

# Compiles all BASIC files in a given folder
$(INPUTS) : $(BUILD_FOLDER)
	$(PETCAT_BINARY) $(PETCAT_FLAGS) $(patsubst $(DIR)/%.bas,$(BUILD_FOLDER)/%.prg,$(@)) -- $@

default: clean all

all: $(INPUTS)

clean:
	$(RM_BINARY) $(RM_FLAGS) $(BUILD_FOLDER)
