if [ $(uname -s) = "Linux" ]; then
  echo "Linux detected"
  if [ -z ${DOCKER_BUILD+x} ]; then 
    echo "building on ubuntu"
  else 
    echo "building on ubuntu inside docker"
  fi 

else
  if [ $(uname -s) = "Darwin" ]; then
    echo "MacOS detected"
      export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)
      export C_INCLUDE_PATH="$SDKROOT/usr/include"
      #export PATH="/usr/local/Cellar/llvm@19/19.1.7/bin":$PATH

      export LLVM_PATH="$(brew --prefix llvm)"
      export PATH="$LLVM_PATH/bin:$PATH"
      export LDFLAGS="-L$LLVM_PATH/lib"
      export CPPFLAGS="-I$LLVM_PATH/include"
      export CC=clang
      export CXX=clang++

  else
    echo "Unknown OS detected"
  fi
fi


