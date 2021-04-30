#include <stdio.h>
#include <stdlib.h>

int		main(int argc, char **argv) {
	printf("%p\n", getenv(argv[1]) + atoi(argv[2]) / 2);
	return (0);
}
