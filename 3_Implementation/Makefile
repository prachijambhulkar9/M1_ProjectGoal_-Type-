PROJ_NAME = M1_STARDELTACONVERTER_UTIL
SRC = star_delta.c 

TEST_SRC=test_star_delta.c unity.c star_delta.c

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

Build:
	gcc $(SRC) -o $(call FixPath,$(PROJ_NAME).$(EXEC)) -lm
run:Build
	./$(call FixPath,$(PROJ_NAME).$(EXEC))

Build_test:
	gcc $(TEST_SRC) -o $(call FixPath,$(PROJ_NAME).$(EXEC)) -lm
run:Build_test
	./$(call FixPath,$(PROJ_NAME).$(EXEC))
