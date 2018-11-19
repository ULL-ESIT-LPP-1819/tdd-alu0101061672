RSpec.describe Persona do
	
	before :each do
		
		@pe1 = Persona.new("Sonia","Díaz Santos", 22,0, "Candelaria", "666666666");

	end
	
	it "Comprobando el almacenamiento de datos" do
		
		expect(@pe1.nombre).to eq("Sonia")
		expect(@pe1.apellidos).to eq("Díaz Santos")
		expect(@pe1.edad).to eq(22)
		expect(@pe1.sexo).to eq(0)
                expect(@pe1.direccion).to eq("Candelaria")
                expect(@pe1.telefono).to eq("666666666")
		

	end

	it "Comprobando la etiqueta formateada" do

		expect(@pe1.to_s).to eq("Nombre: Sonia, Apellidos: Díaz Santos, Edad: 22, Direccion: Candelaria, Telefono: 666666666")
	
	end 



end
