#include <stdio.h>
#include <stdlib.h>
#include <cs50.h>
#include <stdint.h>

typedef uint8_t BYTE;

#define SIZE 512
#define name 8

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("Invalid number of arguments.\n");
        return 1;
    }
    FILE *file = fopen(argv[1], "r");
    if (file == NULL)
    {
        printf("Forensic image cannot be opened for reading.\n");
        return 1;
    }
    int counter = 0;
    BYTE buffer[SIZE];
    bool first = true;
    FILE *outfile;
    while (fread(buffer, SIZE, 1, file))
    {
        if (buffer[0] == 0xff && buffer[1] == 0xd8 && buffer[2] == 0xff && (buffer[3] & 0xf0) == 0xe0)
        {
            if (first == true)
            {
                first = false;
            }
            else
            {
                fclose(outfile);
            }
            char filename[name];
            sprintf(filename, "%03i.jpg", counter++);
            outfile = fopen(filename, "w");
            if (outfile == NULL)
            {
                return 1;
            }
            fwrite(buffer, SIZE, 1, outfile);
        }
        else if (first == false)
        {
            fwrite(buffer, SIZE, 1, outfile);
        }
        
    }
    fclose(outfile);
    fclose(file);
    
}