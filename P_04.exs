defmodule NumeroPerfecto do
  # Atributo de módulo con nuevo valor quemado
  @numero 28

  @doc "Verifica si el número quemado en @numero es perfecto."
  def ejecutar do
    es_perfecto?(@numero)
  end

  def es_perfecto?(n \\ @numero) when is_integer(n) and n > 1 do
    suma_divisores_cola(n, 1, 0)
  end
  def es_perfecto?(_n), do: false

  # Caso Base: cuando el divisor alcanza al número n
  defp suma_divisores_cola(n, divisor, acumulador) when divisor == n do
    acumulador == n
  end

  # Llamada recursiva de cola (Tail Call Optimization)
  defp suma_divisores_cola(n, divisor, acumulador) do
    nuevo_acumulador =
      if rem(n, divisor) == 0 do
        acumulador + divisor
      else
        acumulador
      end

    suma_divisores_cola(n, divisor + 1, nuevo_acumulador)
  end
end
