# OBJS specifies which files to compile as part of the project
OBJS = main.cpp visuals.cpp

# OBJ_NAME specifies the name of our executable
OBJ_NAME = bin/01_hello_opengl

# CC specifies which compiler to use
CC = gcc-4.8

# INCLUDE_PATHS specifies the additional include paths required
INCLUDE_PATHS = -I/usr/local/include -I/opt/X11/include

# LIBRARY_PATHS specifies the additional library paths required
LIBRARY_PATHS = -L/usr/local/lib -I/opt/X11/lib

# COMPILER_FLAGS specifies additional compilation options
# -w suppresses all warnings
COMPILER_FLAGS = -w

#LINKER_FLAGS specifies the libraries we're linking against
LINKER_FLAGS = -framework OpenGL -lGLUT

# This is the target that compiles our executable
all : $(OBJS)
	$(CC) $(OBJS) $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(OBJ_NAME)

# Shorthand for running the compiled thing
run	:
	./$(OBJ_NAME)

# removes binaries
clean :
	rm $(OBJ_NAME)

# cleans, compiles and runs
crun :
	make clean
	make all
	make run
