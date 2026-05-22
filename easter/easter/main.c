//
//  main.c
//  easter
//
//  Created by Alton Rose on 9/7/22.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int a,b,c,d,e,f,g,h,i,k,r,m,n,p;
    int y = 2022;
    printf("y = %d \n", y);
    
    a = y % 19;
    printf("a = %d \n", a);
    
    b = y / 100;
    printf("b = %d \n", b);
    
    c = y % 100;
    printf("c = %d \n", c);

    d = b / 4;
    printf("d = %d \n", d);
    
    e = b % 4;
    printf("e = %d \n", e);
    
    f = (b + 8) / 25;
    printf("f = %d \n", f);
    
    g = (b-f+1) / 3;
    printf("g = %d \n", g);
    
    h = (19 * a + b - d - g + 15) % 30;
    printf("h = %d \n", h);
    
    i = c / 4;
    printf("i = %d \n", i);
    
    k = c % 4;
    printf("k = %d \n", k);
    
    r = (32 + 2 * e + 2 * i - h - k) % 7;
    printf("r = %d \n", r);
    
    m = (a + 11 * h + 22 * r) / 451;
    printf("m = %d \n", m);
    
    n = (h + r - 7 * m + 114) / 31;
    printf("n = %d \n", n);
    
    p = (h + r - 7 * m + 114) % 31;
    printf("p = %d \n", p);
    
    
    
    printf("In the year %d, Easter falls on %d/%d \n", y, n, p+1);
    return 0;
    
}
