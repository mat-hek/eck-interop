#include "unifex_demo.h"

UNIFEX_TERM add(UnifexEnv *env, int a, int b) {
  int result = a + b;
  return add_result(env, result);
}
