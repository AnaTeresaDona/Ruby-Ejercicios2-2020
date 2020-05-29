
data1 = open("notas.data").readlines
data = data1.map{|elemento|  elemento.split(",")}

def notas_mas_altas(array)
    nombre_del_alumno = array[0]
    mejor_nota = array.map{|nota| nota.to_i}.max
    print "La mejor nota de #{nombre_del_alumno} es #{mejor_nota}"
end

puts notas_mas_altas(data[0])
puts notas_mas_altas(data[1])


  








