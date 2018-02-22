/*
 * main.c
 *
 *  Created on: 20 Feb 2018
 *      Author: dane
 */
#include "Lab1.h"

int main()
{
	size_t Bounds1[2] = {100,100};
	Lab1(2, Bounds1);

	size_t Bounds2[3] = {100,100,100};
	Lab1(3, Bounds2);

	size_t Bounds3[4] = {50,50,50,50};
	Lab1(4, Bounds3);

	size_t Bounds4[5] = {20,20,20,20,20};
	Lab1(5, Bounds4);
	return 0;
}
