#######
# SIMPAGER
#######

##Note: to suppress echoing command, put @ in front
# Remember to tab for each command!

CXX = g++
CXXFLAGS = -O2
OBJS = main.o fifo.o lru.o opt.o rand.o

###
# $^ - "All the dependencies"
# $< - "First dependency"
# $@ - "Target name"


simpager: $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^


#General format of something fancy
#targets.... : target pattern : prereq patterns
#	cmds

$(OBJS) : %.o : %.cpp
	@echo "Macros version"
	$(CXX) $(CXXFLAGS) -c $<




main.o: main.cpp
	@echo "Building main.o"
	$(CXX) $(CXXFLAGS) -c $<

#fifo.o: fifo.cpp
#	$(CXX) $(CXXFLAGS) -c $<

#lru.o: lru.cpp
#	$(CXX) $(CXXFLAGS) -c $<

#opt.o: opt.cpp
#	$(CXX) $(CXXFLAGS) -c $<

#rand.o: rand.cpp
#	$(CXX) $(CXXFLAGS) -c $<

.PHONY: clean
clean:
	/bin/rm -f *.o simpager
