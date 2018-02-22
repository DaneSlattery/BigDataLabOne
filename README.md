# Big Data Lab 1

The program implements 3 procedures which take in as input a K-dimensional integer array A[N0][N1]...[Nk-1] and bounds N0, N1, ... , Nk-1 
for different values of K.

-The procedure "setZero(int* Array, size_t K, size_t Bounds[](", sets all the values in this array to 0.

-The procedure "TenPercentOnes(int* Array, size_t K, size_t Bounds[])", sets 10% of these values to 0.

-The procedure "void ChooseFivePercent(int* Array, size_t K, size_t Bounds[])", picks randomly 5% of the data, and prints the coordinate indices of 
the elements and the value of the array element at the chosen cell.

'main.c', 'CreateArray.c', 'NumElements.h', all supplement this program and give an exemplary usage on 4 large arrays.

Some timing data:

the 20x20x20x20x20 array takes 16s.
50x50x50x50 takes 26s.
100x100x100 takes 3s.
100x100 is in the ms.
