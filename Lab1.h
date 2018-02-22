#ifndef LAB1_H
#define LAB1_H

#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <math.h>

#include "CreateArray.h"
#include "setZero.h"
#include "TenPercentOnes.h"
#include "ChooseFivePercent.h"

void Lab1(size_t K, size_t Bounds[]) 
{
    int *Array = CreateArray(K, Bounds);
    printf("%zu-Dimensional: Array Created.\n", K);
	setZero(Array,K,Bounds);
    printf("%zu-Dimensional: Zero's Set.\n", K);
	TenPercentOnes(Array,K,Bounds);
    printf("%zu-Dimensional: 10%% of Data Set Uniformly.\n", K);
	ChooseFivePercent(Array,K,Bounds);
    printf("%zu-Dimensional: 5%% of Data randomly checked.\n", K);
	free(Array);
}

#endif
