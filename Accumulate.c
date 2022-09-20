#include <stdio.h>

int main(void) {
  int sum = 0;

  for (int i = 0; i < 101; i++){
    sum = sum + i;
  }

  printf("Sum of 1-100 = %d \n", sum);

  return sum;
}