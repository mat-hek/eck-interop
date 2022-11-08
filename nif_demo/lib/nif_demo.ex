defmodule NifDemo do
  @on_load :init

  def init do
    :ok = :erlang.load_nif('./priv/nif_demo', 0)
  end

  def add(_a, _b) do
    raise "Failed to load NIF"
  end
end
