RM_BINARY=rm
RM_FLAGS=-rf
MKDIR_BINARY=mkdir
MKDIR_FLAGS=-p

BUILD_FOLDER=$(abspath ../../bin/basic_computer_games)

DIR = $(abspath .)
INPUTS = $(wildcard $(DIR)/*.bas)
OUTPUTS = $(patsubst $(DIR)/%.bas,$(BUILD_FOLDER)/%.prg,$(INPUTS))

check:
	@echo "DIR = $(DIR)"
	@echo "INPUTS = $(INPUTS)"
	@echo "OUTPUTS = $(OUTPUTS)"
	@echo "BUILD_FOLDER = $(BUILD_FOLDER)"

$(BUILD_FOLDER):
	$(MKDIR_BINARY) $(MKDIR_FLAGS) $(@)

$(INPUTS) : $(BUILD_FOLDER)
	petcat -v -w2 -f -o $(patsubst $(DIR)/%.bas,$(BUILD_FOLDER)/%.prg,$(@)) -- $@

all: $(INPUTS)

clean:
	$(RM_BINARY) $(RM_FLAGS) $(BUILD_FOLDER)
