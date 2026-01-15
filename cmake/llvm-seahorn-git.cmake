set(SEAHORN_LLVM_SOURCE_DIR "${CMAKE_SOURCE_DIR}/llvm-seahorn" CACHE STRING "seahorn-llvm source directory")
if (TopLevel)
  set(SEAHORN_LLVM_REPO "https://github.com/trail-of-forks/llvm-seahorn.git" CACHE STRING "seahorn-llvm repo")
  add_custom_target(seahorn-llvm-git
    ${GIT_EXECUTABLE} clone -b dev20 ${SEAHORN_LLVM_REPO} ${SEAHORN_LLVM_SOURCE_DIR})
endif()
