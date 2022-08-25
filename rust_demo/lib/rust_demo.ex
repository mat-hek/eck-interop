defmodule RustDemo do
  use Rustler, otp_app: :rust_demo, crate: "rustdemo"

  def add(_a, _b) do
    raise "Failed to load NIF"
  end
end
