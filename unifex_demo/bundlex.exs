defmodule UnifexDemo.BundlexProject do
  use Bundlex.Project

  def project() do
    [
      natives: natives()
    ]
  end

  defp natives() do
    [
      unifex_demo: [
        sources: ["unifex_demo.c"],
        interface: [:nif, :cnode],
        preprocessor: Unifex
      ]
    ]
  end
end
