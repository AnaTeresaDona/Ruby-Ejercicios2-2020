
data = open("ventas_base.db").read.chomp.split(",")
array0 = data.map{|x| x.to_f}

def proyecciones(array, aumento, indice1, indice2)
rango = array[indice1..indice2]
modificacion = ((rango.sum(0.0) * aumento).round(2))
end

output = File.open("resultados.data", "w")
output.write(proyecciones(array0, 1.1, 0, 5))
output.write"\n"
output.write(proyecciones(array0, 1.2, 6, 11))
