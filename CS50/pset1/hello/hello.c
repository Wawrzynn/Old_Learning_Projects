#include <stdio.h>
#include <cs50.h>

int main(void) 
{
    //Asking for name
    string name = get_string("What is your name?\n");
    
    //Welcomes by name
    printf("hello, %s\n", name);
}