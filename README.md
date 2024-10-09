# STM32 H743 Nucleo Example

## Build docker container

```
docker build -t cmake-on-stm32 .
```

## Using the container in a terminal

Linux 
```
docker run --rm -it -v $(pwd)/:/nucleo/ -w /nucleo/ cmake-on-stm32
```

Windows (CMD shell)
```
docker run --rm -it -v %cd%:/nucleo/ -w /nucleo/ cmake-on-stm32
```

### Build the firmware
Typing the following commands will build the firmware elf file.

```
mkdir build
cd build
cmake ..
make
```

## GITHUB Actions
Acitons are setup to build on commit and generate release on tag.  Below are the steps for generating a release.

```
git tag v1.0.0  # Create a tag
git push origin v1.0.0  # Push the tag to GitHub
```

## Code formatting checks locally

https://releases.llvm.org/download.html

Using: https://github.com/llvm/llvm-project/releases/download/llvmorg-18.1.8/LLVM-18.1.8-win64.exe
