#include <stdio.h>
#include <cs50.h>

int main(void)
{
    int height;
    do
    {
     height = get_int("Height: ");   
    }
    while (height > 8 || height < 1);
    
    int counter = height;
    
    for (int i = height; i > 0; i--)
    {
      while (counter > height + 1 - i)
      {
         printf(" ");
         counter--;
      }
      
      counter = height;
      
      while (counter >= i)
      {
         printf("#");
         counter--;
      }
      
      counter = height;
      printf("\n");
    }
}