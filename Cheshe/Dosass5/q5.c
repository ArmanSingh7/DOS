#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#define MAX_COUNT 20
sem_t semA, semB, semC;
void* thread_A(void* arg) {
    for (int i = 1; i <= MAX_COUNT; i += 3) {
        sem_wait(&semA); // Wait for semaphore A
        printf("A%d ", i);
        sem_post(&semB); // Signal semaphore B
    }
    pthread_exit(NULL);
}
void* thread_B(void* arg) {
    for (int i = 2; i <= MAX_COUNT; i += 3) {
        sem_wait(&semB); // Wait for semaphore B
        printf("B%d ", i);
        sem_post(&semC); // Signal semaphore C
    }
    pthread_exit(NULL);
}
void* thread_C(void* arg) {
    for (int i = 3; i <= MAX_COUNT; i += 3) {
        sem_wait(&semC); // Wait for semaphore C
        printf("C%d ", i);
        sem_post(&semA); // Signal semaphore A
    }
    pthread_exit(NULL);
}
int main() {
    pthread_t threadA, threadB, threadC;
    sem_init(&semA, 0, 1); // Start with Thread A
    sem_init(&semB, 0, 0); // Thread B waits initially
    sem_init(&semC, 0, 0); // Thread C waits initially
    // Create threads
    pthread_create(&threadA, NULL, thread_A, NULL);
    pthread_create(&threadB, NULL, thread_B, NULL);
    pthread_create(&threadC, NULL, thread_C, NULL);
    pthread_join(threadA, NULL);
    pthread_join(threadB, NULL);
    pthread_join(threadC, NULL);
    sem_destroy(&semA);
    sem_destroy(&semB);
    sem_destroy(&semC);
    printf("\nSequence Printing Completed.\n");
    return 0;
}
