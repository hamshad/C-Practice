#include <stdio.h>
#include <stdlib.h>

struct Person {
  char name[64];
  int age;
};

void updateStruct(struct Person *p, int age) {
  printf("updateStruct: %d\n", p->age);
  p->age = age;
}

int main(int argc, char *argv[])
{

  // run `make` to excute the makefile and run the c code.

  int x = 4; // 4
  // English: integer named x is set to 4
  int * pX = &x; // address of x
  // English: integer pointer named pX is set to the address of x
  int y = *pX; // 4 (dereferencing)
  // English: integer y is set to the thing pointed to by pX


  // Example:
  struct Person person = {"John", 20};
  updateStruct(&person, 100);
  printf("main: %d\n", person.age);


  // Necessary need of pointers Example:
  char *heapMemory = malloc(100);
  if (NULL == heapMemory) {
    printf("malloc failed!\n");
  } 

  return 0;

}
