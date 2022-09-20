/*
  (B[i-1]+B[i]+B[i+1])/3
  1. declare two arrays, each has 100 elements 
  2. use a for loop to randomly generate 100 integers and store   them in one array 
  3. use another for loop to do the 1-D stencil and store the result in the other array */

#include <stdio.h>
#include<stdlib.h>
#include <time.h>
#include <limits.h>

int main(void) {
  int A[100];
  int B[100];

  srand(time(NULL));

  for (int i = 0; i < 100; i++) {
    A[i] = (rand() % 100) + 1;
  }

  printf("%d ---- %d\n", A[0], A[99]); //Debug

  for (int i = 0; i < 100; i++) {
    B[i] = (A[i - 1] + A[i] + A[i + 1])/3;
  }

  printf("%d ----- %d", B[0], B[99]); //Debug
  
  return 0;
}