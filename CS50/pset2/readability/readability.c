#include <stdio.h>
#include <cs50.h>
#include <ctype.h>
#include <string.h>
#include <math.h>

int count_letters(string text);
int count_words(string text);
int count_sentences(string text);

int main(void) 
{
    
    string text = get_string("Text: ");
    
    int letters = count_letters(text);
    int words = count_words(text);
    int sentences = count_sentences(text);
    
    double L;
    double S;
    
    L = ((double)letters * 100) / (double)words;
    
    S = ((double)sentences * 100) / (double)words;
    
    int index = round(0.0588 * L - 0.296 * S - 15.8);
    
    if (index > 16) 
    {
        printf("Grade 16+\n");
    }
    else if (index < 1)
    {
        printf("Before Grade 1\n");
    }
    else 
    {
        printf("Grade %i\n", index);
    }
    
    
}

int count_letters(string text)
{
    int count = 0;
    
    for (int i = 0, n = strlen(text); i < n; i++)
    {
        if (text[i] >= 'a' && text[i] <= 'z') 
        {
            count++;
        }
        else if (text[i] >= 'A' && text[i] <= 'Z')
        {
            count++;
        }
    }
    return count;
}

int count_words(string text)
{
    int count = 0;
    
    for (int i = 0, n = strlen(text); i < n; i++)
    {
        if (text[i] == ' ')
        {
            count++;
        }
    }
    return count + 1;
}

int count_sentences(string text)
{
    int count = 0;
    
    for (int i = 0, n = strlen(text); i < n; i++)
    {
        if (text[i] == '.' || text[i] == '?' || text[i] == '!')
        {
            count++;
        }
    }
    return count;
}