#include <stdio.h>

int		main(int argc, char **argv) {
	int			mask;
	int			found;
	size_t		i;

	(void)argc;
	for (mask = 0; mask < 256; ++mask) {
		found = 1;
		for (i = 0; argv[1][i] && found; ++i)
			if ((argv[1][i] ^ mask) != argv[2][i])
				found = 0;
		if (found) {
			printf("%d\n", mask);
			return (0);
		}
	}
	printf("No mask found\n");
	return (1);
}
