CXX = gcc
LDFLAGS = --coverage
OPTIONS = -Wall -fexceptions -fprofile-arcs -ftest-coverage
INCS = -I.  -I"." 
OBJS = $(SRC:.c=.o)

SRC = ratp.c  main.c cmocka.c




all: $(OBJS)
	$(CXX) $(LDFLAGS) $(INCS) -o testAll  $(OBJS)

	
exec : all
	testAll.exe
%.o: %.c
	$(CXX) $(OPTIONS) -c  $< -o $@ $(INCS)
	
clean:
	rm $(OBJS) 


mrproper: clean
	rm testAll