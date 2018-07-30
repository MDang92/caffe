@echo off
echo Downloading CUDA toolkit 9.2 ...
appveyor DownloadFile  https://developer.nvidia.com/compute/cuda/9.2/Prod2/local_installers/cuda_9.2.148_windows -FileName cuda_9.2.148_windows.exe
echo Installing CUDA toolkit 9.2 ...
cuda_9.2.148_windows.exe -s compiler_9.2 ^
                           cublas_9.2 ^
                           cublas_dev_9.2 ^
                           cudart_9.2 ^
                           curand_9.2 ^
                           curand_dev_9.2 ^
                           nvml_dev_9.2
:: Add CUDA toolkit to PATH
set PATH=%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2\bin;%ProgramFiles%\NVIDIA GPU Computing Toolkit\CUDA\v9.2\libnvvp;%PATH%
nvcc -V
