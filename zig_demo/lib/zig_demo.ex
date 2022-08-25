defmodule ZigDemo do
  use Zig

  ~Z"""
  /// nif: add/2
  fn add(a: i64, b: i64) i64 {
    return a + b;
  }
  """
end
