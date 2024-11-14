#######
# SIMPAGER
#######

##Note: to suppress echoing command, put @ in front
# Remember to tab for each command!

CXX = g++
CXXFLAGS = -O2

simpager: main.o fifo.o lru.o opt.o rand.o
	$(CXX) $(CXXFLAGS) -o simpager main.o fifo.o lru.o opt.o rand.o

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

fifo.o: fifo.cpp
	$(CXX) $(CXXFLAGS) -c fifo.cpp

lru.o: lru.cpp
	$(CXX) $(CXXFLAGS) -c lru.cpp

opt.o: opt.cpp
	$(CXX) $(CXXFLAGS) -c opt.cpp

rand.o: rand.cpp
	$(CXX) $(CXXFLAGS) -c rand.cpp

clean:
	/bin/rm -f *.o simpager
