CXX = g++
CXXFLAGS = -Wall -Iinclude -g

SRC = src/main.cpp src/cordic.cpp
OBJ = src/main.o src/cordic.o
TARGET = cordic_app

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJ)

src/%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
