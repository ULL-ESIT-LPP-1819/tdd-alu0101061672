class Etiqueta

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


end
