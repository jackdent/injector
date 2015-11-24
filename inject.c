#include <stdio.h>

void install(void) __attribute__ ((constructor));

void install() {
  printf("Injected!\n");
}
