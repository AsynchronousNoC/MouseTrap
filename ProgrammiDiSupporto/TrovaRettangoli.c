#include <stdio.h>
#include "math.h"

int main()
{
    int n;
    printf("Inserire un numero per trovare tutte le combinazioni:\t");
    scanf("%d",&n);
    int x,y;
    printf("punto di partenza x:\t");
    scanf("%d",&x);
    printf("punto di partenza y:\t");
    scanf("%d",&y);
    printf("Start:\tX%dY%d\nEnds:\n",x,y);
    int q_x, q_y, q_x_old, q_y_old;
    q_x = 1+ sqrt((n+2)/4);
    q_y=q_x;
    printf("X%dY%d\n",x+q_x-1,y+q_y-1);
    int margine= q_x*q_y*4-(n+2);
    int Arealoss,AreaGained;
    while(q_x>1){
        q_x--;
        AreaGained=0;
        Arealoss=1*q_y*4;
        while(Arealoss-AreaGained>margine){
            q_y++;
            AreaGained+=q_x*4;
        }
        margine= q_x*q_y*4-(n+2);
        printf("X%dY%d\n",x+q_x-1,y+q_y-1);
    }
}

