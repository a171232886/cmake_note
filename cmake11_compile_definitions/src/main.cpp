#include <stdio.h>
int main(){
#ifdef TEST
    printf("ifdef\n");
    printf("VAR=%d\n", VAR);
#endif    
    printf("f!!!!!\n");

}