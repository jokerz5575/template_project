# Compiler and flags
CC = gcc
CFLAGS = -Wall -g

# Target executable
TARGET = main

# Source and object files
SRCS = src/main.c
OBJS = $(SRCS:.c=.o)

# Default rule
all: $(TARGET)
	# Link object files into executable
	$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)
	
# Compile .c to .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean build files
clean:
	rm -f $(TARGET) $(OBJS)
