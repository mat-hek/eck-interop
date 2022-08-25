defmodule BlasDynamic do
  use Zig,
    libs: ["/usr/lib/x86_64-linux-gnu/blas/libblas.so"],
    include: ["/usr/include/x86_64-linux-gnu"],
    link_libc: true

  ~Z"""
  const blas = @cImport({
    @cInclude("cblas.h");
  });

  /// nif: blas_axpy/3
  fn blas_axpy(env: beam.env, a: f64, x: []f64, y: []f64) beam.term {
    if (x.len != y.len) {
      return beam.raise_function_clause_error(env);
    }

    blas.cblas_daxpy(@intCast(c_int, x.len), a, x.ptr, 1, y.ptr, 1);

    return beam.make_f64_list(env, y) catch {
      return beam.raise_function_clause_error(env);
    };
  }
  """
end
