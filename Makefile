all:
	gcc -Wall -o inject.dylib -dynamiclib inject.c
	gcc -Wall -o app app.c

clean:
	rm app inject.dylib

run:
	DYLD_INSERT_LIBRARIES=inject.dylib ./app
