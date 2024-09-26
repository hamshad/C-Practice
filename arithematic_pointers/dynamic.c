#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
  // Four horsemen of dynamic memory allocations
  // malloc() - allocates the specified number of bytes
  // calloc() - allocates the specified numeber of bytes and initializes to 0
  // realloc() - increases and decreases the size of the specified block of memory, moving it if necessary
  // free() - releases the specified block of memory back to system

  int a = 10; // stores on stack on stack memory
  int *ptr; // this also is stored on stack memory
  ptr = (int *) malloc(sizeof(int)); // creates memory of 4 bytes in heap and returns its pointer with type int
  *ptr = 20;

  printf("%d\n", *ptr);

  free(ptr); // frees the memory
  
  // if I don't free the memory than this below declaration
  // will create a new block of memory and the before memory block will remain as it is
  // it will create cruft in heap memory and cause memory leaks
  ptr = (int *) malloc(sizeof(int));
  *ptr = 30;

  printf("%d\n", *ptr);

  return 0;
}
