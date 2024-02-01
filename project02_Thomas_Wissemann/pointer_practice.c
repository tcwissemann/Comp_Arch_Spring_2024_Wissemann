#include <stdio.h>
#include <stdbool.h>
#include <string.h>

//Function to dump memoryaddress for each char
void memDump(char *str) {
    int length = strlen(str);
    int i;

    for (i = 0; i < length; i++) {
        printf("%p %d \t%-4c \n", (void*)str, *str, *str);
        str++;
    }
}

//Function to get hash for a string
int getHash(char *str) {
    int hash = 0;
    int length = strlen(str);

    for (int i = 0; i < length; i++) {
        hash += str[i];
    }

    return hash / length;
}

//Function to check if string is palendrome
bool isPalindrome(char *str) {
    int length = strlen(str);
    
    for (int i = 0; i < length / 2; i++) {
        if (*(str + i) != *(str + length - i - 1)) {
            return false;
        }
    }

    return true;
}

//Function to print string starting at a specific character
void printFromIndex(char *str) {
    int length = strlen(str);
    int index;

    printf("Enter the start index: ");
    scanf("%d", &index);

    if (index < 0 || index >= length) {
        printf("index out of bounds.\n");
    } else {
        printf("%s starting at index %d: %s\n", str, index, str + index);
    }
}

//Function to reverse a string
void stringReverse(char* str) { 
    int len = strlen(str); 
    //pointers to start and end 
    char* start = str; 
    char* end = str + len - 1; 
  
    while (start < end) { 
        char temp = *start; 
        *start = *end; 
        *end = temp; 
        start++; 
        end--; 
    } 
} 

int main() {
    char input[16]; 
    int option;

    do {
        printf("Enter a word (all lowercase, max length 15, or !q to exit): ");
        scanf("%15s", input);

        if (strcmp(input, "!q") == 0) {
            break; //Exit the loop if the user enters !q
        }

        printf("Pick an option:\n");
        printf("1). memDump \n2). getHash \n3). isPalindrome \n4). printFromIndex \n5). stringReverse\n");
        printf("Option (number): ");
        scanf("%d", &option);

        switch (option) {
        case 1:
            memDump(input);
            break;
        case 2:
            printf("Hash value: %d\n", getHash(input));
            break;
        case 3:
            if (isPalindrome(input)) {
                printf("%s is a palindrome!\n", input);
            } else {
                printf("The word is not a palindrome :(\n");
            }
            break;
        case 4:
            printFromIndex(input);
            break;
        case 5:
            stringReverse(input);
            printf("Your string reversed is: %s\n", input);
            break;
        default:
            printf("Invalid option.\n");
        }

    } while (1);

    return 0;
}



//on droplet gcc -g pointer_practice.c -o pointer_practice
// ./pointer_practice