defmodule VocalesConGraphemes do
  # Atributo de módulo con valor quemado
  @cadena "Hola"

  @doc "Ejecuta la función utilizando el valor quemado en @cadena."
  def ejecutar do
    contar(@cadena)
  end

  @doc "Función principal que acepta un parámetro o usa el valor por defecto."
  def contar(cadena \\ @cadena) when is_binary(cadena) do
    cadena
    |> String.graphemes()
    |> do_contar()
  end

  # Caso Base: Lista vacía
  defp do_contar([]), do: 0

  # Caso Recursivo: Divide la lista en Cabeza y Cola
  defp do_contar([head | tail]) do
    incremento = if es_vocal?(head), do: 1, else: 0
    incremento + do_contar(tail)
  end

  defp es_vocal?(letra) do
    String.downcase(letra) in ["a", "e", "i", "o", "u", "á", "é", "í", "ó", "ú"]
  end
end

  # Solución 2: Sin String.graphemes/1 (Pattern Matching en binario)
 defmodule VocalesSinGraphemes do
  # Atributo de módulo con valor quemado
  @palabra "Hola"

  @doc "Ejecuta la función utilizando el valor quemado en @palabra."
  def ejecutar do
    contar(@palabra)
  end

  def contar(cadena \\ @palabra)

  # Caso Base: Cadena vacía
  def contar(""), do: 0

  # Caso Recursivo: Coincidencia de patrones binarios
  def contar(<<char::utf8, rest::binary>>) do
    incremento = if es_vocal?(char), do: 1, else: 0
    incremento + contar(rest)
  end

  defp es_vocal?(char) do
    char in [?a, ?e, ?i, ?o, ?u, ?A, ?E, ?I, ?O, ?U, ?á, ?é, ?í, ?ó, ?ú]
  end
end
