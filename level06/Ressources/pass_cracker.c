#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#define MIN_LOG_SZ	5
#define MAX_LOG_SZ	10

int		encode(char *login) {
	size_t			i;
	unsigned int	key;
	size_t			len;

	len = strnlen(login, 32);

	unsigned int	r0;
	unsigned int	r1;

	key = (login[3] ^ 4919) + 6221293;
	for (i = 0; i < len; ++i) {
		if (login[i] < ' ')
			return (1);		
		r0 = login[i] ^ key;
		r1 = (r0 * 2284010283) >> 32;
		key += r0 - (((((r0 - r1) >> 1) + r1) >> 10) * 1337);
	}
	return (key);
}

int		main(int argc, char **argv) {
	(void)argc;
	printf("%d\n", encode(argv[1]));
	return (0);
}
