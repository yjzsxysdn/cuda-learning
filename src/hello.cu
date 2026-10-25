#include <stdio.h>

__global__ void hello_kernel() {
    printf("Hello CUDA from GPU! Thread ID: %d\n", threadIdx.x);
}

int main() {
    hello_kernel<<<1, 5>>>();
    
    cudaDeviceSynchronize();
    
    printf("Program finished on CPU!\n");
    return 0;
}