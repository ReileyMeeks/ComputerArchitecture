#include <stdio.h>

int main(void) {
  //Declare the variables
  int t0 = 60;
  int t1 = 0;

  //Perform the loop
  while (t1 != t0) {
    t1 += 5;
    t0--;

    printf("t0 is: %d and t1 is: %d\n", t0, t1);
  }

  if (t1 == 0) {
    //If Failed
    printf("t0 is: %d and t1 is: %d the loop failed", t0, t1);
    return 0;
  } else {
    //If Works
    return 42;
  }
}