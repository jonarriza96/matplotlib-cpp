# Set default install prefix
install_prefix="$PWD/install"

# Check if an argument is provided
if [ -n "$1" ]; then
    install_prefix="$1"
    echo "Installing to custom directory: $install_prefix"
fi


# Check if the build directory exists
if [ -d "build" ]; then
    echo "Removing existing build directory..."
    rm -rf build
fi

# Create a new build directory and navigate into it
mkdir build && cd build

# Run CMake and make based on the selected build type
cmake -DPython3_EXECUTABLE=$(which python) -DCMAKE_INSTALL_PREFIX="$install_prefix" ..
make

# Install the executable
make install

# # Run the executable
# ./minimal
# ./animated_3d