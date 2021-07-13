#include <stdio.h>
#include <cs50.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>

bool key_check_validation(string s);

int main(int argc, string argv[]) 
{
    if (argc != 2 || !key_check_validation(argv[1]))
    {
        printf("Usage: ./caesar key");
        return 1;
    }
    
    int key = atoi(argv[1]);
    
    string plaintext = get_string("plaintext: ");
    
    printf("ciphertext: ");
    
    for (int i = 0, n = strlen(plaintext); i < n; i++)
    {
        char c = plaintext[i];
        
        if (isalpha(c))
        {
            char m = 'A';
            if (isupper(c))
            {
                printf("%c", c = (c - m + key) % 26 + m);
            }
            
            else if (islower(c))
            {
                m = 'a';
                
                printf("%c", c = (c - m + key) % 26 + m);
            }
        }
        else
        {
            printf("%c", c);
        }
       
    }
    printf("\n");
}


bool key_check_validation(string s)
{
    for (int i = 0, n = strlen(s); i < n; i++)
    {
        if (!isdigit(s[i]))
        {
            return false;
        }
    }
    return true;
}