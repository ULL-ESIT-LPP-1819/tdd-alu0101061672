RSpec.describe Persona do
	
	before :each do
		
		@pe1 = Persona.new("Sonia","Díaz Santos", 22,0, "Candelaria", "666666666");
		@pa1 = DatosAntropometricos.new("Sonia", "Díaz Santos", "Candelaria", "666666666", 70,1.6,22, 0, 81,90)		
                @pa2 = DatosAntropometricos.new("Miriam", "Rodríguez", "Orotava", "999999999", 40,1.5,23, 0, 70,100)
                @pa3 = DatosAntropometricos.new("Jorge", "González", "Orotava", "444444444", 70,1.87,20, 1, 90, 100)
                @pa4 = DatosAntropometricos.new("Alejandro", "González", "Icod", "333333333", 160,1.9,20, 1, 81,90)
                @pa5 = DatosAntropometricos.new("Marta", "García", "San Miguel", "222222222", 56,1.67,20, 0, 70,95)
		
		@lista = List.new
	end
	
	it "Comprobando el almacenamiento de datos" do
		
		expect(@pe1.nombre).to eq("Sonia")
		expect(@pe1.apellidos).to eq("Díaz Santos")
		expect(@pe1.edad).to eq(22)
		expect(@pe1.sexo).to eq(0)
                expect(@pe1.direccion).to eq("Candelaria")
                expect(@pe1.telefono).to eq("666666666")
		

	end

	it "Comprobando la etiqueta formateada de Persona" do

		expect(@pe1.to_s).to eq("Nombre: Sonia, Apellidos: Díaz Santos, Edad: 22, Sexo: 0, Direccion: Candelaria, Telefono: 666666666")
	
	end 

	it "Comprobando initialize del hijo(Paciente)" do
		
                expect(@pa1.nombre).to eq("Sonia")
                expect(@pa1.apellidos).to eq("Díaz Santos")
                expect(@pa1.edad).to eq(22)
                expect(@pa1.sexo).to eq(0)
                expect(@pa1.direccion).to eq("Candelaria")
                expect(@pa1.telefono).to eq("666666666")
		expect(@pa1.peso).to eq(70)
		expect(@pa1.talla).to eq(1.6)	

	end

	it "Comprobando la etiqueta formateada de Paciente" do
	
		expect(@pa1.to_s).to eq("Nombre: Sonia, Apellidos: Díaz Santos, Edad: 22, Sexo: 0, Direccion: Candelaria, Telefono: 666666666,70,1.6,22,0,81,90")

	end

	it "Listas de individuos clasificados por IMC" do
	
	@lista.insert_end(@pa1)
        @lista.insert_end(@pa2)
        @lista.insert_end(@pa3)
        @lista.insert_end(@pa4)
        @lista.insert_end(@pa5)

	imc_bajopeso = []
	imc_adecuado = []
        imc_sobrepeso = []
	imc_obesidad1 = []
	imc_obesidad2 = []
	imc_obesidad3 = []

        while (@lista.empty == false) do
	
                imc = @lista.extract_begin.IMC
	
		if imc < 18.5
                        imc_bajopeso.push(imc)

                elsif 18.5<=imc && imc<=24.9
                        imc_adecuado.push(imc)

                elsif 25.0<=imc && imc<=29.9
                        imc_sobrepeso.push(imc)

                elsif 30.0<=imc && imc<=34.9
                        imc_obesidad1.push(imc)

                elsif 35.0<=imc && imc<=39.9
                        imc_obesidad2.push(imc)

                elsif imc>=40
                        imc_obesidad3.push(imc)
                end

        end

        expect(imc_bajopeso).to eq([17.78])
        expect(imc_adecuado).to eq([20.02,20.08])
        expect(imc_sobrepeso).to eq([27.34])
        expect(imc_obesidad1).to eq([])
        expect(imc_obesidad2).to eq([])
        expect(imc_obesidad3).to eq([44.32])
       
	end

end
