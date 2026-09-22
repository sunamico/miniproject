# Компілятор та флаги
CC = g++
CFLAGS = -Wall -Wextra -std=c++17

# Назви файлів
LIB = libcalc.a
SRC_LIB = add.cpp
SRC_MAIN = main.cpp
OBJ_LIB = add.o
OBJ_MAIN = main.o
EXEC = main

# Основна ціль — збірка бібліотеки та виконуваного файлу
all: $(LIB) $(EXEC)

# Створення статичної бібліотеки
$(LIB): $(OBJ_LIB)
	ar rcs $(LIB) $(OBJ_LIB)

# Створення виконуваного файлу
$(EXEC): $(OBJ_MAIN) $(LIB)
	$(CC) $(CFLAGS) -o $(EXEC) $(OBJ_MAIN) -L. -lcalc

# Компіляція об'єктних файлів
%.o: %.cpp
	$(CC) $(CFLAGS) -c $<
# Очистка
clean:
	rm -f *.o $(LIB) $(EXEC)
