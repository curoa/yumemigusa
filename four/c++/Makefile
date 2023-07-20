CXX = g++
#CXX = g++-10
D_DIR = .depend
CXXFLAGS_BASE = -W -Wall -std=c++2a -MMD -MP -MF $(D_DIR)/$*.d
# -Wno-deprecated 
#CXXFLAGS = -O3 -DNDEBUG $(CXXFLAGS_BASE)
#FOR_PROFILER = -p # comment out if valgrind says "profiling timer expired".
CXXFLAGS = -g $(FOR_PROFILER) $(CXXFLAGS_BASE)
LDFLAGS = -g $(FOR_PROFILER)
TARGETS = a.out
SRCS = $(wildcard *.cpp)
OBJDIR = .objs
OBJS = $(addprefix $(OBJDIR)/, $(SRCS:.cpp=.o))

all : $(TARGETS)

-include $(D_DIR)/*

$(TARGETS) : $(OBJDIR)  $(OBJS)
	${CXX} ${LDFLAGS} -o ${TARGETS} ${OBJS}

$(OBJDIR)/%.o : %.cpp
	${CXX} ${CXXFLAGS} -c -o $@ $<

.PHONY: cln
cln : clean
.PHONY: clean
clean:
	rm -f ${TARGETS} ${OBJS} $(D_DIR)/* *~

.PHONY: re
re : clean all

$(OBJDIR) :
	mkdir -p $(OBJDIR)
	mkdir -p $(D_DIR)

# how to install c++20 in ubuntu18
# sudo add-apt-repository ppa:ubuntu-toolchain-r/test
# sudo apt install g++-10

