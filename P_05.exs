defmodule CadenaMasLarga do
  # Atributo de módulo con valor quemado
  @lista ["sol", "desarrollo", "elixir", "ai"]

  @doc "Obtiene la cadena más larga de la lista quemada en @lista."
  def ejecutar do
    obtener_mas_larga(@lista)
  end

  def obtener_mas_larga(lista \\ @lista)
  def obtener_mas_larga([]), do: ""
  def obtener_mas_larga([cadena]), do: cadena

  def obtener_mas_larga([head | tail]) do
    mas_larga_tail = obtener_mas_larga(tail)

    if String.length(head) >= String.length(mas_larga_tail) do
      head
    else
      mas_larga_tail
    end
  end
end
