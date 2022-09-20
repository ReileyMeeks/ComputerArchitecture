#include <stdio.h>
#include<stdlib.h>
#include <time.h>
#include <limits.h>

/*{
  Requirments
  1. 100 int array, use for loop to gen 100 random numbers and populate
  2. Use second for loop to get values and store them in a variable
  3. Calculate avg by n/100
  4. Print and return avg
  }*/


int main(void) {
  int i;
  int avg = 0;
  int total = 0;
  int A[100];
  
  srand(time(NULL));
  
    for (i = 0; i < 100; i++) {
        A[i] = (rand() % 100) + 1;
    }

  //printf("%d ---- %d\n", A[0], A[99]); //Rand int check
  
  for(i = 0; i < 100; i++) {
    total = total + A[i];
  }

   avg = total / 100;

  printf("%d\n", avg);
  
  return avg;
}