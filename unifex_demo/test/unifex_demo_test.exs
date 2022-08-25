defmodule UnifexDemoTest do
  use ExUnit.Case
  doctest UnifexDemo

  test "greets the world" do
    assert UnifexDemo.hello() == :world
  end
end
