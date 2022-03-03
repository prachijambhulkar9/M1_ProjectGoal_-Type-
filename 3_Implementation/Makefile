PROJ_NAME = M1_STARDELTACONVERTER_UTIL
SRC = src/main.c\ 
src/star_delta.c\ 

TEST_SRC= test/test_star_delta.c\
Unity/unity.c\ 
src/star_delta.c\

ifdef OS
	RM = del/q
	FixPath = $(subst /,\,$1)
	EXEC = EXEC
else
	ifeq ($(shell uname),Linux)
		RM = rm -rf
		FixPath = $1
		EXEC = out
	endif
endif


INC = -Iinc\
-IUnity\

Build:
	gcc $(SRC) $(INC) -o $(call FixPath,$(PROJ_NAME).$(EXEC)) -lm
run:Build
	./$(call FixPath,$(PROJ_NAME).$(EXEC))

Build_test:
	gcc $(TEST_SRC) $(INC) -o $(call FixPath,$(PROJ_NAME).$(EXEC)) -lm
run:Build_test
	./$(call FixPath,$(PROJ_NAME).$(EXEC))

staticcheck:
	cppcheck --enable=all -iunity .

dynamiccheck:Build
	valgrind ./$(call FixPath,$(PROJ_NAME).$(EXEC))

coverage:
	gcc -fprofile-arcs -ftest-coverage $(SRC) $(INC) -o $(call FixPath,$(PROJ_NAME).$(EXEC)) -lm
	gcow -a ./$(call FixPath,$(PROJ_NAME).$(EXEC))

