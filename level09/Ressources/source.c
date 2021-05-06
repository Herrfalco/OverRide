#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

typedef struct		s_msg {
	char			body[140];
	char			user[40];
	unsigned int	len;
}					t_msg;

void	secret_backdoor(void) {
	char	buff[128];

	fgets(buff, 128, stdin);
	system(buff);
}

void	set_msg(t_msg *msg) {
	char	buff[1024] = { '\0' };

	puts(">: Msg @Unix-Dude");
	printf(">>: ");
	fgets(buff, 1024, stdin);
	strncpy(msg->body, buff, msg->len);
}

void	set_username(t_msg *msg) {
	char	buff[128] = { '\0' };
	int		i;

	puts(">: Enter your username");
	printf(">>: ");
	fgets(buff, 128, stdin);
	if ((i = 0) <= 40) {
		do {
			msg->user[i] = buff[i];
		} while (buff[++i] != '\0');
	}
	printf(">: Welcome, %s", msg->user);
}

void	handle_msg(void) {
	t_msg	msg;

	memset(&msg.user, '\0', 40);
	msg.len = 140;
	set_username(&msg);
	set_msg(&msg);
	puts(">: Msg sent!");
}

int		main(int argc, char **argv) {
	puts("--------------------------------------------\n\
|   ~Welcome to l33t-m$n ~    v1337        |\
\n--------------------------------------------");
	handle_msg();
	return (0);
}
