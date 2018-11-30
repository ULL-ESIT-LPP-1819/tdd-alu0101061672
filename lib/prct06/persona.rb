# @author Sonia Díaz Santos
class Persona 
# Se incluye el módulo Comparable
	include Comparable	
# Se realiza para poder acceder a los atributos y cambiarlos    	
	attr_accessor :nombre, :apellidos, :edad, :sexo, :direccion, :telefono
# Método para inicializar las variables
	def initialize(nombre,apellidos,edad, sexo,direccion,telefono)
		
		@nombre,@apellidos = nombre,apellidos
		@edad,@sexo, @direccion,@telefono = edad, sexo, direccion,telefono
	
	end
#
# Método to_s para imprimir los objetos de la clase
#
# == Returns:
# Devuelve un string como representación de los objetos de la clase Persona
#
	def to_s 
		"Nombre: #{@nombre}, Apellidos: #{@apellidos}, Edad: #{@edad}, Sexo: #{@sexo}, Direccion: #{@direccion}, Telefono: #{@telefono}"
	end

# Método para utilizar el módulo Comparable que nos indica cómo se comportan los objetos, en este caso, el nombre de la persona. 
#
        def <=>(other)

                return self.nombre <=> other.nombre

        end

# Método para utilizar el módulo Comparable que nos indica cómo se comportan los objetos, en este caso, el sexo de la persona. 
# 
        def <=>(other)

                return self.sexo <=> other.sexo

        end


end
