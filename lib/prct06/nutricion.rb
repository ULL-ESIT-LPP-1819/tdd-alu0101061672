# @author Sonia Díaz
class Etiqueta
# Incluye el módulo Comparable
	include Comparable
# Se realiza para poder acceder a los atributos y cambiarlos	
	attr_accessor  :nombreEtiqueta, :grasas, :grasasSaturadas, :grasasMonoinsaturadas, :grasasPoliinsaturadas, :hidratosCarbono, :azucares, :polialcoholes, :almidon, :fibraAlimentaria, :proteinas, :sal, :vitaminas, :minerales
# Se inicializan las variables 
	def initialize(nombreEtiqueta, grasas, grasasSaturadas, grasasMonoinsaturadas, grasasPoliinsaturadas, hidratosCarbono, azucares, polialcoholes, almidon, fibraAlimentaria, proteinas, sal, vitaminas, minerales)
	
		@nombreEtiqueta, @grasas, @grasasSaturadas, @grasasMonoinsaturadas, @grasasPoliinsaturadas, @hidratosCarbono, @azucares, @polialcoholes, @almidon, @fibraAlimentaria, @proteinas, @sal, @vitaminas, @minerales = nombreEtiqueta, grasas, grasasSaturadas, grasasMonoinsaturadas, grasasPoliinsaturadas, hidratosCarbono, azucares, polialcoholes, almidon, fibraAlimentaria, proteinas, sal, vitaminas, minerales
	end

# Calcula los KiloJulios por 100g de producto teniendo en cuenta todos los componentes de la etiqueta nutricional  
#
# == Returns:
# Devuelve el valor total en KJ teniendo en cuenta todos los componentes de la etiqueta nutricional
#
	def factor_conversionKJ
		kj = grasas.to_f * 37
		kj += grasasSaturadas.to_f * 37
		kj += grasasMonoinsaturadas.to_f * 37
		kj += grasasPoliinsaturadas.to_f * 37
		kj += hidratosCarbono.to_f * 17
		kj += azucares.to_f * 17
		kj += polialcoholes.to_f * 10
		kj += almidon.to_f * 17
		kj += fibraAlimentaria.to_f * 8
		kj += proteinas.to_f * 17
		kj += sal.to_f * 25
		kj.round(2)
	end

# Calcula los KiloCalorías por 100g de producto teniendo en cuenta todos los com$
#
# == Returns:
# Devuelve el valor total en Kcal teniendo en cuenta todos los componentes de la$
#
	def factor_conversionKcal
		
		kcal = grasas.to_f * 9
		kcal += grasasSaturadas.to_f * 9
		kcal += grasasMonoinsaturadas.to_f * 9
		kcal += grasasPoliinsaturadas.to_f * 9
		kcal += hidratosCarbono.to_f * 4
		kcal += azucares.to_f * 4
		kcal += polialcoholes.to_f * 2.4
		kcal += almidon.to_f * 4
		kcal += fibraAlimentaria.to_f * 2
		kcal += proteinas.to_f * 4
		kcal += sal.to_f * 6
		kcal.round(2)


	end
	
# Calcula la Ingesta referencial del valor energético
#
# == Returns:
# Devuelve el valor de la Ingesta de referencia del valor energético
#
	def ir_valorEnergetico
		ve = factor_conversionKcal.to_f / 2000	
		ve.round(2)
	end

# Calcula la Ingesta referencial de las grasas
#
# == Returns:
# Devuelve el valor de la Ingesta de referencia de las grasas
#
	def ir_grasas
		gra = grasas.to_f / 70 
		gra.round(2)
	end

# Calcula la Ingesta referencial de las grasas saturadas
#
# == Returns:
# Devuelve el valor de la Ingesta de referencia de las grasas saturadas
#
	def ir_grasasSaturadas
		grasat = grasasSaturadas.to_f / 20
		grasat.round(2)
	end

# Calcula la Ingesta referencial de los hidratos de carbono
#
# == Returns:
# Devuelve el valor de la Ingesta de referencia de los hidratos de carbono
#
	def ir_hidratosCarbono
		hc = hidratosCarbono.to_f / 260
		hc.round(2)
	end

# Calcula la Ingesta referencial de los azúcares
#
# == Returns:
# Devuelve el valor de la Ingesta de referencia de los azúcares
#
	def ir_azucares
		az = azucares.to_f / 90
		az.round(2)
	end

# Calcula la Ingesta referencial de las proteínas
#
# == Returns:
# Devuelve el valor de la Ingesta de referencia de las proteínas
#
	def ir_proteinas
		pro = proteinas.to_f / 50
		pro.round(2)
	end

# Calcula la Ingesta referencial de la sal
#
# == Returns:
# Devuelve el valor de la Ingesta de referencia de la sal
#
	def ir_sal
		s = sal.to_f / 6
		s.round(2)
	end
	
# Método to_s para imprimir los objetos de la clase(cantidad de gramos y la ingesta de referencia)
#
# == Returns:
# Devuelve un string como representación del objeto, en este caso devuelve la Ingesta de referencia y los gramos del producto
#
	def to_s2
		"(    Por 100g o 100ml de producto   IR(por 100g 0 100ml de producto)   Por porción de X g   IR(por porción de X g de producto)\nValor energético(kj/kcal)   #{factor_conversionKcal}   #{ir_valorEnergetico}   #{'-'}   #{'-'}\nGrasas de las cuales:   #{grasas}   #{ir_grasas}   #{'-'}   #{'-'}\nSaturadas   #{grasasSaturadas}   #{ir_grasasSaturadas}   #{'-'}   #{'-'}\nMonoinsaturadas   #{grasasMonoinsaturadas}   #{'-'}   #{'-'}   #{'-'}\nPoliinsaturadas   #{grasasPoliinsaturadas}   #{'-'}   #{'-'}   #{'-'}\nHidratos de carbono de los cuales:   #{hidratosCarbono}   #{ir_hidratosCarbono}   #{'-'}   #{'-'}\nAzucares   #{azucares}   #{ir_azucares}   #{'-'}   #{'-'}\nPolialcoholes   #{polialcoholes}   #{'-'}   #{'-'}   #{'-'}\nAlmidón   #{almidon}   #{'-'}   #{'-'}   #{'-'}\nFibra alimentaria    #{fibraAlimentaria}   #{'-'}   #{'-'}   #{'-'}\nProteínas   #{proteinas}   #{ir_proteinas}   #{'-'}   #{'-'}\nSal   #{sal}   #{ir_sal}   #{'-'}   #{'-'}\nVitamina/mineral   #{vitaminas}   #{'-'}   #{'-'}   #{'-'}\n)"

	end

# Método to_s para imprimir los objetos de la clase(añadiendo las cantidades por porciones)
#
# == Returns:
# Devuelve un string como representación del objeto, en este caso devuelve la Ingesta de referencia, los gramos del producto, y los correspondientes datos por porciones
#
	def to_s3
		
		"(    Por 100g o 100ml de producto   IR(por 100g 0 100ml de producto)   Por porción de X g   IR(por porción de X g de producto)\nValor energético(kj/kcal)   #{factor_conversionKcal}   #{ir_valorEnergetico}   #{por_porcion_valorEnergetico}   #{ir_porcion_valorEnergetico}\nGrasas de las cuales:   #{grasas}   #{ir_grasas}   #{por_porcion_grasas}   #{ir_porcion_grasas}\nSaturadas   #{grasasSaturadas}   #{ir_grasasSaturadas}   #{por_porcion_grasasSaturadas}   #{ir_porcion_grasasSaturadas}\nMonoinsaturadas   #{grasasMonoinsaturadas}   #{'-'}   #{por_porcion_grasasMonoinsaturadas}   #{'-'}\nPoliinsaturadas   #{grasasPoliinsaturadas}   #{'-'}   #{por_porcion_grasasPoliinsaturadas}   #{'-'}\nHidratos de carbono de los cuales:   #{hidratosCarbono}   #{ir_hidratosCarbono}   #{por_porcion_hidratosCarbono}   #{ir_porcion_hidratosCarbono}\nAzucares   #{azucares}   #{ir_azucares}   #{por_porcion_azucares}   #{ir_porcion_azucares}\nPolialcoholes   #{polialcoholes}   #{'-'}   #{por_porcion_polialcoholes}   #{'-'}\nAlmidón   #{almidon}   #{'-'}   #{por_porcion_almidon}   #{'-'}\nFibra alimentaria    #{fibraAlimentaria}   #{'-'}   #{por_porcion_fibraAlimentaria}   #{'-'}\nProteínas   #{proteinas}   #{ir_proteinas}   #{por_porcion_proteinas}   #{ir_porcion_proteinas}\nSal   #{sal}   #{ir_sal}   #{por_porcion_sal}   #{ir_porcion_sal}\nVitamina/mineral   #{vitaminas}   #{'-'}   #{por_porcion_vitaminas}   #{'-'}\n)"
	end
	
# Calcula la cantidad de valor energético por porción de producto
#
# == Returns:
# Devuelve la cantidad de valor energético por porción de producto
#
	def por_porcion_valorEnergetico
		porcion = (factor_conversionKcal.to_f * 25)/100
		porcion.round(2)	
	end

# Calcula la cantidad de grasas por porción de producto
#
# == Returns:
# Devuelve la cantidad de grasas por porción de producto  
#
	def por_porcion_grasas
		porcion = (grasas * 25)/100
                porcion.round(2)
        end

# Calcula la cantidad de grasas saturadas por porción de producto
#
# == Returns:
# Devuelve la cantidad de grasas saturadas por porción de producto  
#
	def por_porcion_grasasSaturadas
		porcion = (grasasSaturadas * 25)/100
                porcion.round(2)
        end

# Calcula la cantidad de grasas monoinsaturadas por porción de producto
#
# == Returns:
# Devuelve la cantidad de grasas monoinsaturadas por porción de producto  
#
 	def por_porcion_grasasMonoinsaturadas
  		porcion = (grasasMonoinsaturadas * 25)/100
                porcion.round(2) 
        end
	
# Calcula la cantidad de grasas poliinsaturadas por porción de producto
#
# == Returns:
# Devuelve la cantidad de grasas poliinsaturadas por porción de producto  
#
	def por_porcion_grasasPoliinsaturadas
		porcion = (grasasPoliinsaturadas * 25)/100
                porcion.round(2)
        end

# Calcula la cantidad de hidratos de carbono por porción de producto
#
# == Returns:
# Devuelve la cantidad de hidratos de carbono por porción de producto  
#
	def por_porcion_hidratosCarbono
		porcion = (hidratosCarbono * 25)/100
                porcion.round(2)
        end

# Calcula la cantidad de azúcares por porción de producto
#
# == Returns:
# Devuelve la cantidad de azúcares por porción de producto  
#
	def por_porcion_azucares
   		porcion = (azucares * 25)/100
                porcion.round(2)
        end

# Calcula la cantidad de polialcoholes por porción de producto
#
# == Returns:
# Devuelve la cantidad de polialcoholes por porción de producto  
#
	def por_porcion_polialcoholes
		porcion = (polialcoholes * 25)/100
                porcion.round(2)
        end

# Calcula la cantidad de almidon por porción de producto
#
# == Returns:
# Devuelve la cantidad de almidon por porción de producto  
#
	def por_porcion_almidon
		porcion = (almidon * 25)/100
                porcion.round(2)
        end

# Calcula la cantidad de fibra alimentaria por porción de producto
#
# == Returns:
# Devuelve la cantidad de fibra alimentaria por porción de producto  
#
	def por_porcion_fibraAlimentaria
		porcion = (fibraAlimentaria * 25)/100
                porcion.round(2)
        end

# Calcula la cantidad de proteínas por porción de producto
#
# == Returns:
# Devuelve la cantidad de proteínas por porción de producto  
#
	def por_porcion_proteinas
   		porcion = (proteinas * 25)/100
                porcion.round(2)
        end

# Calcula la cantidad de sal por porción de producto
#
# == Returns:
# Devuelve la cantidad de sal por porción de producto  
#
	def por_porcion_sal
		porcion = (sal * 25)/100
                porcion.round(2)
        end

# Calcula la cantidad de vitaminas por porción de producto
#
# == Returns:
# Devuelve la cantidad de vitaminas por porción de producto  
#
	def por_porcion_vitaminas
		porcion = (vitaminas * 25)/100
                porcion.round(2)
        end

# Calcula la Ingesta de Referencia por porción del valor energético 
#
# == Returns:
# Devuelve la Ingesta de Referencia del valor energético por porción   
#
	def ir_porcion_valorEnergetico
                ve = por_porcion_valorEnergetico.to_f / 2000
                ve.round(2)
        end

# Calcula la Ingesta de Referencia por porción de las grasas 
#
# == Returns:
# Devuelve la Ingesta de Referencia de las grasas por porción   
#
        def ir_porcion_grasas
                gra = por_porcion_grasas.to_f / 70
                gra.round(2)
        end

# Calcula la Ingesta de Referencia por porción de las grasas saturadas
#
# == Returns:
# Devuelve la Ingesta de Referencia de las grasas saturadas por porción   
#
        def ir_porcion_grasasSaturadas
                grasat = por_porcion_grasasSaturadas.to_f / 20
                grasat.round(2)
        end

# Calcula la Ingesta de Referencia por porción de los hidratos de carbono
#
# == Returns:
# Devuelve la Ingesta de Referencia de los hidratos de carbono por porción   
#
        def ir_porcion_hidratosCarbono
                hc = por_porcion_hidratosCarbono.to_f / 260
                hc.round(2)
        end

# Calcula la Ingesta de Referencia por porción de los azúcares 
#
# == Returns:
# Devuelve la Ingesta de Referencia de los azúcares por porción   
#
        def ir_porcion_azucares
                az = por_porcion_azucares.to_f / 90
                az.round(2)
        end

# Calcula la Ingesta de Referencia por porción de las proteínas 
#
# == Returns:
# Devuelve la Ingesta de Referencia de las proteínas por porción   
#
        def ir_porcion_proteinas
                pro = por_porcion_proteinas.to_f / 50
                pro.round(2)
        end

# Calcula la Ingesta de Referencia por porción de la sal 
#
# == Returns:
# Devuelve la Ingesta de Referencia de la sal por porción   
#
        def ir_porcion_sal
                s = por_porcion_sal.to_f / 6
                s.round(2)
        end

# Método para utilizar el módulo Comparable que nos indica cómo se comportan los objetos, en este caso, las grasas. 
# 
	def <=>(other)	

		return self.grasas <=> other.grasas 

	end

# Método para utilizar el módulo Comparable que nos indica cómo se comportan los objetos, en este caso, el nombre de la etiqueta. 
# 
        def <=>(other)

                return self.nombreEtiqueta <=> other.nombreEtiqueta

        end


end
