defmodule RustDemoTest do
  use ExUnit.Case
  doctest RustDemo

  test "greets the world" do
    assert RustDemo.hello() == :world
  end
end
