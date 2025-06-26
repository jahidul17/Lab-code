#include <stdio.h>
#include <string.h>
#include <ctype.h>

int isOperator(char op)
{
    return op == '+' || op == '-' || op == '*' || op == '/' || op == '%' || op == '=';
}

void yylex()
{
    char input[100];
    // printf("Enter input: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = '\0'; // Remove newline

    char *token = strtok(input, " ");
    while (token != NULL)
    {
        if (isdigit(token[0]))
        {
            printf("Literals: %s\n", token);
        }
        else if (isalpha(token[0]))
        {
            printf("IDENTIFIER: %s\n", token);
        }
        else if (isOperator(token[0]))
        {
            printf("Operator: %s\n", token);
        }
        else
        {
            printf("Unknown char: %s\n", token);
        }
        token = strtok(NULL, " ");
    }
}

int main()
{
    yylex();
    return 0;
}