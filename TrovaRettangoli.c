#include <stdio.h>
#include "math.h"

int main()
{
    int n;
    printf("Inserire un numero per trovare tutte le combinazioni:\t");
    scanf("%d",&n);
    int q_x, q_y, q_x_old, q_y_old;
    q_x = 1+ sqrt((n+2)/4);
    q_y=q_x;
    printf("X%dY%d\n",q_x,7+q_y);
    int margine= q_x*q_y*4-(n+2);
    int Arealoss,AreaGained,q_last;
    while(q_x>1){
        q_x--;
        Arealoss=1*q_y*4;
        q_last=q_y;
        do{
            q_y_old=q_y;
            q_y++;
            AreaGained=(q_y-q_last)*q_x*4;
        }while(Arealoss-AreaGained>=margine);
        margine=Arealoss-AreaGained;
        printf("X%dY%d\n",q_x,7+q_y_old);
        q_y=q_y_old;
    }
}

