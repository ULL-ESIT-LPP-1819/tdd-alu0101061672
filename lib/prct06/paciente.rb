# @author Sonia Díaz Santos 
class DatosAntropometricos < Persona
# Incluye el módulo Enumerable
	include Enumerable
# Se realiza para poder acceder a los atributos y cambiarlos    
        attr_accessor :factor_actividad_fisica, :peso, :talla, :edad, :sexo, :circunferenciaCintura, :circunferenciaCadera
# Método para inicializar las variables que llama al initialize de la clase padre(Persona) 
        def initialize (factor_actividad_fisica,nombre,apellidos, direccion,telefono,peso,talla,edad,sexo, circunferenciaCintura, circunferenciaCadera)
		super(nombre,apellidos,edad,sexo,direccion,telefono)
                @factor_actividad_fisica,@peso, @talla, @circunferenciaCintura, @circunferenciaCadera = factor_actividad_fisica, peso,talla, circunferenciaCintura, circunferenciaCadera

        end

# Método to_s para imprimir los objetos de la clase
#
# == Returns:
# Devuelve un string como representación de los objetos de la clase hija más los objetos del to_s de la clase padre(Persona)
#
        def to_s
		
		super().to_s +
		",#{@peso},#{@talla},#{@edad},#{@sexo},#{@circunferenciaCintura},#{@circunferenciaCadera}"
        end

# Método para calcular el Índice de Masa Corporal
#
# == Returns:
# Devuelve el valor del imc del individuo teniendo en cuenta su peso y talla
#
        def IMC

                imc = (peso/(talla*talla)).round(2)

                if imc < 18.5
                        imc #"IMC = #{imc}; Clasificación de la OMS: Bajo peso\nDescripción popular: Delgado"

                elsif 18.5<=imc && imc<=24.9
                        imc#"IMC = #{imc}; Clasificación de la OMS: Adecuado\nDescripción popular: Aceptable"

                elsif 25.0<=imc && imc<=29.9
                        imc#"IMC = #{imc}; Clasificación de la OMS: Sobrepeso\nDescripción popular: Sobrepeso"

                elsif 30.0<=imc && imc<=34.9
                        imc#"IMC = #{imc}; Clasificación de la OMS: Obesidad grado 1\nDescripción popular: Obesidad"

                elsif 35.0<=imc && imc<=39.9
                        imc #"IMC = #{imc}; Clasificación de la OMS: Obesidad grado 2\nDescripción popular: Obesidad"

                elsif imc>=40
                        imc#"IMC = #{imc}; Clasificación de la OMS: Obesidad grado 3\nDescripción popular: Obesidad"
                end

        end

# Método para calcular el porcentaje de grasa
#
# == Returns:
# Devuelve el porcentaje de la grasa de un individuo teniendo en cuenta su imc
#
        def porcentajeGrasa
                imc = (peso/(talla*talla)).round(2)
                porcentajeGrasa = (1.2 * imc + 0.23 * @edad - 10.8 * @sexo - 5.4).round(2)

                return "(#{porcentajeGrasa})"
        end

# Método para calcular la Relación Cintura Cadera
#
# == Returns:
# Devuelve el valor del rcc del individuo. Tiene en cuenta el sexo de la persona
#
        def RCC

                rcc = circunferenciaCintura.to_f/circunferenciaCadera.to_f

                if sexo == 1 #hombres

                        if 0.83<=rcc && rcc<0.88
                        rcc #"RCC = #{rcc};  Riesgo: Bajo"

                        elsif 0.88<=rcc && rcc<0.95
                        rcc #"RCC = #{rcc};  Riesgo: Moderado"

                        elsif 0.95<=rcc && rcc<1.01
                        rcc #"RCC = #{rcc};  Riesgo: Alto"

                        elsif rcc>=1.01
                        rcc #"RCC = #{rcc};  Riesgo: Muy alto"
                        end
                elsif sexo == 0 #mujeres

                        if 0.72<=rcc && rcc<0.75
                        rcc#"RCC = #{rcc};  Riesgo: Bajo"

                        elsif 0.78<=rcc && rcc<0.82
                        rcc#"RCC = #{rcc};  Riesgo: Moderado"

                        elsif rcc>=0.82
                        rcc#"RCC = #{rcc};  Riesgo: Alto"
                        end
                end
        end

# Método para calcular los pliegues cutáneos(valoran la cantidad de tejido adiposo subcutáneo)
#
# == Parameters:
# pliegues
#  Es un pliegue(tricipital,bicipital,subescapular o suprailíaco) que contiene tres valores
#
# == Returns:
# Devuelve una cadena con el valor de la media de los tres valores del pliegue 
#
        def pliegue (pliegues)

                media = 0

                pliegues.length.times do |i|
                        media +=  pliegues[i].to_f
                end

                media = (media/3).round(2)

                "(#{media})"
        end

# Método para utilizar el módulo Enumerable que proporciona una forma de recorrer cada uno de los elementos en el orden correspondiente 
#
        def each

            actual = @head
            while actual != nil do
             yield actual.value
             actual = actual.next
            end

        end

	
	def peso_teorico_ideal

		return ((@talla -150)*0.75+50)

	end

	def gasto_energetico_basal

		if(sexo == 0)

			return ((10*@peso)+(6.25*@talla)-(5*@edad)-161)

		elsif (sexo == 1)

			return ((10*@peso)+(6.25*@talla)-(5*@edad)+5)
		end
	end

	def efecto_termogeno

		return (gasto_energetico_basal*0.10)

	end

	def gasto_actividad_fisica

		return (gasto_energetico_basal * @factor_actividad_fisica)

	end

	def gasto_energetico_total

		return (gasto_energetico_basal + efecto_termogeno + gasto_actividad_fisica)

	end

end




