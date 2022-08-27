//https://www.includehelp.com/c-programs/polynomial-and-differential-equations.aspx
#include <stdio.h>
#include <conio.h>

float poly(float a[], int, float);

int main()
{
    float x, a[10], y1;
    int deg, i;
/*
    printf("Enter the degree of polynomial equation: ");
    scanf("%d", &deg);

    printf("Ehter the value of x for which the equation is to be evaluated: ");
    scanf("%f", &x);
*/
    deg = 2;
    x = 2;
/*
    for (i = 0; i <= deg; i++) {
        printf("Enter the coefficient of x to the power %d: ", i);
        scanf("%f", &a[i]);
    }
*/
    a[0] = 1;
    a[1] = 3;
    a[2] = 2;

    y1 = poly(a, deg, x);

    printf("The value of polynomial equation for the value of x = %.2f is: %.2f", x, y1);
    printf("\n");
    return 0;
}

/* function for finding the value of polynomial at some value of x */
float poly(float a[], int deg, float x)
{
    float p;
    int i;

    p = a[deg];

    for (i = deg; i >= 1; i--) {
        p = (a[i - 1] + x * p);
    }

    return p;
}