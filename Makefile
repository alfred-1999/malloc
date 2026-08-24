# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -I.

# Directories
SRC_DIR = .
BUILD_DIR = build

# Source and object files
SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(patsubst $(SRC_DIR)/%.c,$(BUILD_DIR)/%.o,$(SRCS))

# Executable name
TARGET = $(BUILD_DIR)/malloc_executable

# Default target: build the executable
all: $(TARGET)

# Link object files into the executable
$(TARGET): $(OBJS)
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $^

# Compile each .c file into a .o file
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Delete build artifacts
clean:
	rm -rf $(BUILD_DIR)

# Rebuild from scratch
rebuild: clean all

# Prevent conflicts with files named 'all', 'clean', etc.
.PHONY: all clean rebuild
