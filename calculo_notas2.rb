data1 = open("notas.data").readlines
data = data1.map{|elemento|  elemento.split(",")}


def notas_mas_alta (array)
    n_arreglo = []
array.each do |arreglo_interno|
   
    nombres = arreglo_interno[0]
    notas = (arreglo_interno[1..arreglo_interno.count].map{|nota| nota.to_i}).max
    nombres_y_nota = [nombres,notas]
    n_arreglo.push(nombres_y_nota)
end
print n_arreglo
end

print notas_mas_alta(data)