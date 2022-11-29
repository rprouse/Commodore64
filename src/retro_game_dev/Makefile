include ../binaries.mk

.DEFAULT_GOAL := default

BUILD_FOLDER=$(abspath ../../bin/retro_game_dev)
ifeq ($(OS),Windows_NT)
	BUILD_FOLDER := $(subst /,\,$(BUILD_FOLDER))
endif

# Create the build folder
$(BUILD_FOLDER):
	$(MKDIR_BINARY) $(MKDIR_FLAGS) $(@)

sprites : $(BUILD_FOLDER)
	$(CL65_BINARY) $(CL65_FLAGS) -o $(BUILD_FOLDER)/sprites.prg -l $(BUILD_FOLDER)/sprites.list sprites/gameMain.asm

chapter6 : $(BUILD_FOLDER)
	$(CL65_BINARY) $(CL65_FLAGS) -o $(BUILD_FOLDER)/chapter6.prg -l $(BUILD_FOLDER)/chapter6.list chapter6/gameMain.asm

chapter7 : $(BUILD_FOLDER)
	$(CL65_BINARY) $(CL65_FLAGS) -o $(BUILD_FOLDER)/chapter7.prg -l $(BUILD_FOLDER)/chapter7.list chapter7/gameMain.asm

default: all

all: sprites chapter6 chapter7

clean:
	$(RM_BINARY) $(RM_FLAGS) $(BUILD_FOLDER)
