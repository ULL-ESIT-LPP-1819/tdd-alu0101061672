class Etiqueta
	
	include Comparable
	
	attr_accessor  :nombreEtiqueta, :grasas, :grasasSaturadas, :grasasMonoinsaturadas, :grasasPoliinsaturadas, :hidratosCarbono, :azucares, :polialcoholes, :almidon, :fibraAlimentaria, :proteinas, :sal, :vitaminas, :minerales


	def initialize(nombreEtiqueta, grasas, grasasSaturadas, grasasMonoinsaturadas, grasasPoliinsaturadas, hidratosCarbono, azucares, polialcoholes, almidon, fibraAlimentaria, proteinas, sal, vitaminas, minerales)
	
		@nombreEtiqueta, @grasas, @grasasSaturadas, @grasasMonoinsaturadas, @grasasPoliinsaturadas, @hidratosCarbono, @azucares, @polialcoholes, @almidon, @fibraAlimentaria, @proteinas, @sal, @vitaminas, @minerales = nombreEtiqueta, grasas, grasasSaturadas, grasasMonoinsaturadas, grasasPoliinsaturadas, hidratosCarbono, azucares, polialcoholes, almidon, fibraAlimentaria, proteinas, sal, vitaminas, minerales
	end

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
	
	def ir_valorEnergetico
		ve = factor_conversionKcal.to_f / 2000	
		ve.round(2)
	end

	def ir_grasas
		gra = grasas.to_f / 70 
		gra.round(2)
	end

	def ir_grasasSaturadas
		grasat = grasasSaturadas.to_f / 20
		grasat.round(2)
	end

	def ir_hidratosCarbono
		hc = hidratosCarbono.to_f / 260
		hc.round(2)
	end

	def ir_azucares
		az = azucares.to_f / 90
		az.round(2)
	end

	def ir_proteinas
		pro = proteinas.to_f / 50
		pro.round(2)
	end

	def ir_sal
		s = sal.to_f / 6
		s.round(2)
	end
	
	def to_s2
		"(    Por 100g o 100ml de producto   IR(por 100g 0 100ml de producto)   Por porción de X g   IR(por porción de X g de producto)\nValor energético(kj/kcal)   #{factor_conversionKcal}   #{ir_valorEnergetico}   #{'-'}   #{'-'}\nGrasas de las cuales:   #{grasas}   #{ir_grasas}   #{'-'}   #{'-'}\nSaturadas   #{grasasSaturadas}   #{ir_grasasSaturadas}   #{'-'}   #{'-'}\nMonoinsaturadas   #{grasasMonoinsaturadas}   #{'-'}   #{'-'}   #{'-'}\nPoliinsaturadas   #{grasasPoliinsaturadas}   #{'-'}   #{'-'}   #{'-'}\nHidratos de carbono de los cuales:   #{hidratosCarbono}   #{ir_hidratosCarbono}   #{'-'}   #{'-'}\nAzucares   #{azucares}   #{ir_azucares}   #{'-'}   #{'-'}\nPolialcoholes   #{polialcoholes}   #{'-'}   #{'-'}   #{'-'}\nAlmidón   #{almidon}   #{'-'}   #{'-'}   #{'-'}\nFibra alimentaria    #{fibraAlimentaria}   #{'-'}   #{'-'}   #{'-'}\nProteínas   #{proteinas}   #{ir_proteinas}   #{'-'}   #{'-'}\nSal   #{sal}   #{ir_sal}   #{'-'}   #{'-'}\nVitamina/mineral   #{vitaminas}   #{'-'}   #{'-'}   #{'-'}\n)"

	end

	def to_s3
		
		"(    Por 100g o 100ml de producto   IR(por 100g 0 100ml de producto)   Por porción de X g   IR(por porción de X g de producto)\nValor energético(kj/kcal)   #{factor_conversionKcal}   #{ir_valorEnergetico}   #{por_porcion_valorEnergetico}   #{ir_porcion_valorEnergetico}\nGrasas de las cuales:   #{grasas}   #{ir_grasas}   #{por_porcion_grasas}   #{ir_porcion_grasas}\nSaturadas   #{grasasSaturadas}   #{ir_grasasSaturadas}   #{por_porcion_grasasSaturadas}   #{ir_porcion_grasasSaturadas}\nMonoinsaturadas   #{grasasMonoinsaturadas}   #{'-'}   #{por_porcion_grasasMonoinsaturadas}   #{'-'}\nPoliinsaturadas   #{grasasPoliinsaturadas}   #{'-'}   #{por_porcion_grasasPoliinsaturadas}   #{'-'}\nHidratos de carbono de los cuales:   #{hidratosCarbono}   #{ir_hidratosCarbono}   #{por_porcion_hidratosCarbono}   #{ir_porcion_hidratosCarbono}\nAzucares   #{azucares}   #{ir_azucares}   #{por_porcion_azucares}   #{ir_porcion_azucares}\nPolialcoholes   #{polialcoholes}   #{'-'}   #{por_porcion_polialcoholes}   #{'-'}\nAlmidón   #{almidon}   #{'-'}   #{por_porcion_almidon}   #{'-'}\nFibra alimentaria    #{fibraAlimentaria}   #{'-'}   #{por_porcion_fibraAlimentaria}   #{'-'}\nProteínas   #{proteinas}   #{ir_proteinas}   #{por_porcion_proteinas}   #{ir_porcion_proteinas}\nSal   #{sal}   #{ir_sal}   #{por_porcion_sal}   #{ir_porcion_sal}\nVitamina/mineral   #{vitaminas}   #{'-'}   #{por_porcion_vitaminas}   #{'-'}\n)"
	end
	
	def por_porcion_valorEnergetico
		porcion = (factor_conversionKcal.to_f * 25)/100
		porcion.round(2)	
	end

	def por_porcion_grasas
		porcion = (grasas * 25)/100
                porcion.round(2)
        end

	def por_porcion_grasasSaturadas
		porcion = (grasasSaturadas * 25)/100
                porcion.round(2)
        end

 	def por_porcion_grasasMonoinsaturadas
  		porcion = (grasasMonoinsaturadas * 25)/100
                porcion.round(2) 
        end
	
	def por_porcion_grasasPoliinsaturadas
		porcion = (grasasPoliinsaturadas * 25)/100
                porcion.round(2)
        end

	def por_porcion_hidratosCarbono
		porcion = (hidratosCarbono * 25)/100
                porcion.round(2)
        end

	def por_porcion_azucares
   		porcion = (azucares * 25)/100
                porcion.round(2)
        end

	def por_porcion_polialcoholes
		porcion = (polialcoholes * 25)/100
                porcion.round(2)
        end

	def por_porcion_almidon
		porcion = (almidon * 25)/100
                porcion.round(2)
        end

	def por_porcion_fibraAlimentaria
		porcion = (fibraAlimentaria * 25)/100
                porcion.round(2)
        end

	def por_porcion_proteinas
   		porcion = (proteinas * 25)/100
                porcion.round(2)
        end

	def por_porcion_sal
		porcion = (sal * 25)/100
                porcion.round(2)
        end

	def por_porcion_vitaminas
		porcion = (vitaminas * 25)/100
                porcion.round(2)
        end

	def ir_porcion_valorEnergetico
                ve = por_porcion_valorEnergetico.to_f / 2000
                ve.round(2)
        end

        def ir_porcion_grasas
                gra = por_porcion_grasas.to_f / 70
                gra.round(2)
        end

        def ir_porcion_grasasSaturadas
                grasat = por_porcion_grasasSaturadas.to_f / 20
                grasat.round(2)
        end

        def ir_porcion_hidratosCarbono
                hc = por_porcion_hidratosCarbono.to_f / 260
                hc.round(2)
        end

        def ir_porcion_azucares
                az = por_porcion_azucares.to_f / 90
                az.round(2)
        end

        def ir_porcion_proteinas
                pro = por_porcion_proteinas.to_f / 50
                pro.round(2)
        end

        def ir_porcion_sal
                s = por_porcion_sal.to_f / 6
                s.round(2)
        end


	def <=>(other)	

		return self.grasas <=> other.grasas 

	end

        def <=>(other)

                return self.nombreEtiqueta <=> other.nombreEtiqueta

        end


end
