# MantiCore Platform
`MantiCore` serves as platform codebase for the `Modular Vehicle Electronics System` Project.
This repo will link the necessary linkerscript, startup ASM, HAL, and ThreadX libraries to build for the STM32H503 and STM32H563. To use the platform, it must be subtreed or submoduled in another repo.

# Required Packages
Nix Package managment still needs to be implemented. In the meantime, users must install the most recent versions of CMake and gcc-arm locally.

**In Terminal**:
```
sudo apt install cmake
sudo apt install gcc-arm-none-eabi
```

# Flashing and Debugging
The Modular Vehicle Electronics System leverages the Segger suite of utilities.
Users must install Segger JLinkCommander for flashing, and Segger Ozone for debugging. Both are found [here](https://www.segger.com/downloads/jlink/).

Run JLinkCommander with `JLinkExe`. A full list of commands for JLinkCommander can be found [here](https://wiki.segger.com/J-Link_Commander).

# Demo Projects
Two Demo Projects `DemoNucleoH503` and `DemoNucleoH563` demonstrate the folder hierarchy for build targets expected in the platform that `MantiCore` is subtreed in. 

The Demo Projects show how to set up a Board Support Package, define interrupt handlers for ThreadX, and spawn threads.

# Building 
### Manually 
```
    mkdir build
    cd build
    cmake .. -DCMAKE_BUILD_TYPE=Debug -DMCU=< STM32H503 | STM32H563 > ..
    make
```
### Script
Run the build script in the project root:

``` ./scripts/build.sh < STM32H503 | STM32H563 > ```

