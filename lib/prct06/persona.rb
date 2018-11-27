class Persona 

	include Comparable	
	
	attr_accessor :nombre, :apellidos, :edad, :sexo, :direccion, :telefono

	def initialize(nombre,apellidos,edad, sexo,direccion,telefono)
		
		@nombre,@apellidos = nombre,apellidos
		@edad,@sexo, @direccion,@telefono = edad, sexo, direccion,telefono
	
	end

	def to_s 
		"Nombre: #{@nombre}, Apellidos: #{@apellidos}, Edad: #{@edad}, Sexo: #{@sexo}, Direccion: #{@direccion}, Telefono: #{@telefono}"
	end

        def <=>(other)

                return self.nombre <=> other.nombre

        end

        def <=>(other)

                return self.sexo <=> other.sexo

        end


end
