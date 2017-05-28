DXFLIB_SRCDIR	= 
DXFLIB_DIR		= dxflib/
DXFLIB_SRCS		= $(wildcard $(DXFLIB_SRCDIR)*.cpp)
DXFLIB_OBJS		= $(patsubst %.cpp,%.o,$(DXFLIB_SRCS))

%.o:%.cpp
	g++ -c $< -o $@

build_dxflib:$(DXFLIB_OBJS)
	mkdir $(DXFLIB_DIR)
	cp $(DXFLIB_SRCDIR)*.h $(DXFLIB_DIR)
	ar rcs -o $(DXFLIB_DIR)dxflib.a $^

