#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
pid_t pid;
pid = fork();   
if (pid == 0) {
while(1) {
printf("Child: pid= %d\n", getpid());
}
} else {
 while(1) {
printf("Parent: pid= %d\n", getpid());
}
}
return 0;
}

