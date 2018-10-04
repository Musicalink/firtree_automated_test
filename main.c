#include <stdlib.h>

void my_putchar(char c)
{
    write(1, &c, 1);
}

int main(int ac, char **av)
{
if(ac != 2)
    return(84);
    tree(atoi(av[1]));
}
