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

	end


end
