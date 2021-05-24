#include <stdio.h>

int print_line(char * s,int color);

int main(void){
    int i, j, n;
    int maxcol, maxrow;
    int colors[6];
    colors[0]=41;colors[1]=43;colors[2]=103;
    colors[3]=42;colors[4]=44;colors[5]=45;
    maxcol = 40;
    maxrow = 6;
    char *ms = " ";
    for (i = 0; i < maxrow; i++) {
        print_line(ms, colors[i]);
        printf("\n");
  }
	return 0;
}

int print_line(char * s, int color){
    int i, j, n;
    int maxcol, maxrow;
    for (j = 0; j < 21; j++) {
        printf("\033[%dm%s\033[m", color, s);
    }
    return 0;
}
/*      n = 10*i + j;
      if (n > 108) break; */
