RSpec.describe List do
	
	before :each do
    		@et1 = Etiqueta.new('Chocolate', 29, 15.1, 8.1, 0.7, 47, 50.1, 0, 3.1, 5.9, 4.2, 0.02, 3, 6)	
	        @et2 = Etiqueta.new('Nutela', 57.16 ,8.12 , 37.28, 6.72,14.8 ,3.97 ,0 ,0 ,10.3 ,17.64 , 0.2, 0,0 )
                @et3 = Etiqueta.new('Chuleta', 12, 6.54, 6.07, 1.09, 0.8, 0, 0, 0, 0, 19.1, 0.3, 0.5, 0)
		@et4 = Etiqueta.new('Aceite',92, 14, 69, 9.2, 0, 0, 0, 0, 2.9, 0, 0, 0,0)
		@et5 = Etiqueta.new('Colacao0%', 5.8, 3, 2, 0.8, 40, 5, 0,0, 22, 9.2, 0.04, 0,0)
		
		@lista = List.new
	end

	it "Creado primer nodo correctamente" do 
		
	@lista.insert_begin(@et1)
	expect(@lista.get_value).to eq(@et1)
	expect(@lista.get_next).to eq(nil)


	end

	it "Insertando nodo por el final correcto" do
	
	@lista.insert_end(@et1)
	expect(@lista.get_next).to eq(nil)



	end
end
