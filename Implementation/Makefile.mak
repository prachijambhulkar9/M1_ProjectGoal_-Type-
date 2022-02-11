Build : project_main.c Star_Delta_Converter.c 
	gcc project_main.c Star_Delta_Converter.c -o Star_Delta_Converter.out

Run : Build
	./Star_Delta_Converter.out

Clean:
	rm -rf *.o *.out *.i *.s