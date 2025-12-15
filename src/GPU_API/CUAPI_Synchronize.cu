#include "CUAPI.h"
#ifdef GPU

//-------------------------------------------------------------------------------------------------------
// Function    :  CUAPI_Synchronize
// Description :  Block until the device has completed all preceding requested tasks
//
// Note        :  1. Replace the deprecated cudaThreadSynchronize() with cudaDeviceSynchronize()
//-------------------------------------------------------------------------------------------------------
void CUAPI_Synchronize()
{

   // printf("Rank %d syncing GPU...\n", MPI_Rank);

   CUDA_CHECK_ERROR(  cudaDeviceSynchronize()  );

   // printf("Rank %d GPU sync done.\n", MPI_Rank);
}

#endif // #ifdef GPU
