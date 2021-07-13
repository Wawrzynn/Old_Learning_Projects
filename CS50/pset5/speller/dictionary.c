// Implements a dictionary's functionality
#include <strings.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <cs50.h>
#include <stddef.h>
#include <stdbool.h>

#include "dictionary.h"

// Represents a node in a hash table
typedef struct node
{
    char word[LENGTH + 1];
    struct node *next;
}
node;

int count = 0;
// Number of buckets in hash table
const unsigned int N = 26;

// Hash table
node *table[N];

// Returns true if word is in dictionary, else false
bool check(const char *word)
{
    int checkk = hash(word);
    
    node *nodePtr = table[checkk];
    
    while (nodePtr != NULL)
    {
        if (strcasecmp(nodePtr->word,word) == 0)
        {
            return true;
        }
        nodePtr = nodePtr -> next;
    }
    return false;
}

// Hashes word to a number
unsigned int hash(const char *word)
{
    int value = 0;
    
    for (int i = 0; word[i] != '\0'; i++)
    {
        value += tolower(word[i]);
    }
    
    return value % N;
}

// Loads dictionary into memory, returning true if successful, else false
bool load(const char *dictionary)
{
    FILE *filePtr = fopen(dictionary,"r");
    
    if(filePtr == NULL)
    {
        return false;
    }
    
    for (int i = 0; i < N; i++)
    {
        table[i] = NULL;
    }
    
    char tempw[LENGTH + 1];
    
    while(fscanf(filePtr, "%s\n", tempw) != EOF)
    {
        node* temp = malloc(sizeof(node));
        
        strcpy(temp -> word, tempw);
        
        int key = hash(tempw);
        
        if(table[key] == NULL)
        {
            temp->next = NULL;
            table[key] = temp;
        }
        else
        {
            temp->next = table[key];
            table[key] = temp;
        }
        count++;
    }
    fclose(filePtr);
    return true;
}

// Returns number of words in dictionary if loaded, else 0 if not yet loaded
unsigned int size(void)
{
   return count;
}

// Unloads dictionary from memory, returning true if successful, else false
bool unload(void)
{
    for (int i = 0; i < N; i++)
    {
        node *nodePtr = table[i];
        
        while (nodePtr != NULL)
        {
            node *deleteNode = nodePtr;
            nodePtr = nodePtr -> next;
            free(deleteNode);
        }
        
        table[i] = NULL;
    }
    return true;
}
