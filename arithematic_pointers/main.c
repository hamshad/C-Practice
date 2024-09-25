#include <stdio.h>

struct Person {
  char name[64]; // size is 64 byte
  int age; // size is 4 byte
};

int int main(int argc, char *argv[])
{

  // 100 Persons
  struct Person people[100];

  // making a pointer to work as a cursor to traverse along the array
  struct Person *p_Person = &people;

  int i = 0;
  for (i = 0; i < 100; i++) {
    // adding 0 value to the all persons
    p_Person->age = 0;

    // to traverse to next person
    // the below way is wrong because intead of adding it multiplies address bytes
    // because in the end the p_Person is just an address and it holds value like 0x44 something.
    // p_Person += sizeof(struct Person);
    //
    // right way is
    // incrementing by 1 and the compilers goes to the next he Person
    // the compiler knows what you want to do
    p_Person += i;

    // assigning 0 so it will terminal the value so we don't get any output
    p_Person->name[0] = 0;
  }
  
  return 0;
}
