#include <stdio.h>

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
  struct Person person = {"John", 20};
  updateStruct(&person, 100);
  printf("main: %d\n", person.age);
}
