RSpec.describe Persona do
	
	before :each do
		
		@pe1 = Persona.new("Sonia","Díaz Santos", 22, "Candelaria", "666666666");

	end
	
	it "Comprobando el almacenamiento de datos" do
		
		expect(@pe1.nombre).to eq("Sonia")
	

	end



end
