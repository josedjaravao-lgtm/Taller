defmodule MayorLista do

  @lista_defecto [3, 8, 2, 5, 9]

  @doc """
  Obtiene el número mayor de una lista mediante Divide y Vencerás.
  Por defecto evalúa la lista de 5 elementos [3, 8, 2, 5, 9].
  """
  def mayor(lista \\ @lista_defecto)

  def mayor([]), do: nil
  def mayor([elemento]), do: elemento

  # Corrección realizada: is_list(lista) en lugar de list(lista)
  def mayor(lista) when is_list(lista) and length(lista) > 1 do
    mitad = div(length(lista), 2)
    {izquierda, derecha} = Enum.split(lista, mitad)

    max_izq = mayor(izquierda)
    max_der = mayor(derecha)

    max(max_izq, max_der)
  end
end
