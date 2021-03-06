#include <stdio.h>
#include <stdlib.h>

#define BUF_SIZE 200


void welcome_message()
{
	printf("  ________                ___ ___                __    \n");
	printf(" /  _____/______   ____  /   |   \\_____    ____ |  | __\n");
	printf("/   \\  __\\_  __ \\_/ __ \\/    ~    \\__  \\ _/ ___\\|  |/ /\n");
	printf("\\    \\_\\  \\  | \\/\\  ___/\\    Y    // __ \\  \\___|    < \n");
	printf(" \\______  /__|    \\___  >\\___|_  /(____  /\\___  >__|_ \\\n");
	printf("        \\/            \\/       \\/      \\/     \\/     \\/\n");
	printf("				CTF Tools: v1.0\n");
}

void printOut(char* message)
{
	printf("[~] %s", message);
}

int prompt()
{
	char user_input[BUF_SIZE + 1];

	printf("\nWhat do you want to do?\n");
	printf(" 1. List challenges\n");
	printf(" 2. Validate a challenge\n");
	printf("Your choice: ");

	fgets(user_input, BUF_SIZE, stdin);
	return atoi(user_input);
}

void validateChallenge()
{
	char user_input[100];
	int teamid, challid;
	printOut("Give me the chall id: ");
	fgets(user_input, BUF_SIZE, stdin);
	teamid = atoi(user_input);
	printOut("Give me the flag: ");
	fgets(user_input, BUF_SIZE, stdin);

	printOut("Challenge validated!\n");
}

int main()
{
	welcome_message();
	int choice = 0;

	while(choice = prompt()) {
		switch(choice) {
		case 1:
			printOut("Cannot load the challenges list.\n");
			break;
		case 2:
			validateChallenge();
			break;
		default:
			printf("Unrecognized input! Try again.\n");
			break;
		}
	}

	return 0;
}


void WinForYoutube(){
 setuid(0); //Pour Ubuntu mais pas obligé sur debian (je pense à vous de tester !!)
 system("/bin/dash");
}
