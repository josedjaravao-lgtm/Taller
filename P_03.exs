defmodule Potencia do
  # Atributos de módulo con nuevos valores quemados
  @n 81
  @b 3

  @doc "Ejecuta la validación con los valores quemados @n y @b."
  def ejecutar do
    es_potencia?(@n, @b)
  end

  def es_potencia?(n \\ @n, b \\ @b)
  def es_potencia?(n, b) when is_integer(n) and is_integer(b) and n > 0 and b > 1 do
    do_es_potencia?(n, b)
  end
  def es_potencia?(_n, _b), do: false

  # Caso Base: n llega a 1 mediante divisiones exactas
  defp do_es_potencia?(1, _b), do: true

  # Caso Recursivo
  defp do_es_potencia?(n, b) do
    if rem(n, b) == 0 do
      do_es_potencia?(div(n, b), b)
    else
      false
    end
  end
end
