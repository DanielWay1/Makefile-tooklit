# fileName: Makefile
# Name: Daniel Way
# Date: 2/9/2024
# Desc: A makefile to compile all the files into a single executable called employee
CC = g++
CFLAGS = -g -Wall -Wextra
TARGET = employee

default: $(TARGET)

$(TARGET): Employee.o main.o Officer.o Supervisor.o
	$(CC) $(CFLAGS) -o $(TARGET) Employee.o main.o Officer.o Supervisor.o

Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

main.o: main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) -c main.cpp

Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

clean:
	$(RM) $(TARGET) *.o *~
