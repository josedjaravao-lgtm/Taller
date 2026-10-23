defmodule NumeroReversible do
  # Atributo de módulo con nuevo valor quemado
  @numero 27

  @doc "Verifica si el número quemado en @numero es reversible."
  def ejecutar do
    es_reversible?(@numero)
  end

  def es_reversible?(n \\ @numero) when is_integer(n) and n > 0 do
    inverso = invertir_numero(n, 0)
    suma = n + inverso
    todos_digitos_impares?(suma)
  end
  def es_reversible?(_n), do: false

  # Inversión aritmética con recursividad de cola
  defp invertir_numero(0, acumulador), do: acumulador
  defp invertir_numero(num, acumulador) do
    ultimo_digito = rem(num, 10)
    invertir_numero(div(num, 10), acumulador * 10 + ultimo_digito)
  end

  # Comprobación de dígitos impares
  defp todos_digitos_impares?(0), do: true
  defp todos_digitos_impares?(num) do
    ultimo_digito = rem(num, 10)

    if rem(ultimo_digito, 2) != 0 do
      todos_digitos_impares?(div(num, 10))
    else
      false
    end
  end
end
