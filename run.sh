# Check if the build directory exists
if [ -d "build" ]; then
    echo "Removing existing build directory..."
    rm -rf build
fi

# Create a new build directory and navigate into it
mkdir build && cd build

# Run CMake and make based on the selected build type
cmake -DPython3_EXECUTABLE=$(which python) ..

make

# Run the executable
./minimal