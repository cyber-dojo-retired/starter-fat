CXXFLAGS += -I. -std=c++17 -Wall -Wextra -Werror

HPP_FILES = $(wildcard *.hpp)
COMPILED_HPP_FILES = $(patsubst %.hpp,%.compiled_hpp,$(HPP_FILES))
CPP_FILES = $(wildcard *.cpp)
OBJ_FILES = $(patsubst %.cpp,%.o,$(CPP_FILES))

%.o: %.cpp
	@$(CXX) -c -o $@ $< $(CXXFLAGS)

.PHONY: test.output
test.output: test makefile
	@./$<

test: makefile $(OBJ_FILES) $(COMPILED_HPP_FILES)
	@$(CXX) $(CXXFLAGS) -O $(OBJ_FILES) -o $@

# don't compile catch.hpp header
catch.compiled_hpp: catch.hpp
	@true

# This rule ensures header files build in their own right.
# The quality of header files is important because header files
# are #included from other files and thus have a large span
# of influence (unlike .cpp files which are not #included)

%.compiled_hpp: %.hpp
	@$(CXX) -x c++ $(CXXFLAGS) -c -o $@ $<
