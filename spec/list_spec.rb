RSpec.describe List do
	
	before :each do
    		@et1 = Etiqueta.new('Chocolate', 29, 15.1, 8.1, 0.7, 47, 50.1, 0, 3.1, 5.9, 4.2, 0.02, 3, 6)	
	        @et2 = Etiqueta.new('Nutela', 57.16 ,8.12 , 37.28, 6.72,14.8 ,3.97 ,0 ,0 ,10.3 ,17.64 , 0.2, 0,0 )
                @et3 = Etiqueta.new('Chuleta', 12, 6.54, 6.07, 1.09, 0.8, 0, 0, 0, 0, 19.1, 7, 0.5, 0)
		@et4 = Etiqueta.new('Aceite',92, 14, 69, 9.2, 0, 0, 0, 0, 2.9, 0, 8, 0,0)
		@et5 = Etiqueta.new('Colacao0%', 5.8, 3, 2, 0.8, 40, 5, 0,0, 22, 9.2, 0.04, 0,0)
		
		@lista = List.new
	end

	it "Creado primer nodo correctamente" do 
		
	@lista.insert_begin(@et1)
	expect(@lista.get_value).to eq(@et1)
	expect(@lista.get_next).to eq(nil)


	end

	it "Insertando nodo por el final correcto" do
	
	@lista.insert_end(@et2)
	expect(@lista.get_prev).to eq(nil)
	@lista.insert_end(@et1)
	expect(@lista.get_next).to eq(@lista.get_next)


	end

	it "Extrayendo nodo por el principio" do
	
	expect(@lista.extract_begin).to eq("No se puede extraer un nodo, la lista se encuentra vacía")	
	@lista.insert_begin(@et3)
	@lista.insert_begin(@et4)
	expect(@lista.extract_begin).to eq(@et4)	

	end

	it "Extrayendo nodo por el final" do
	
        expect(@lista.extract_end).to eq("No se puede extraer un nodo, la lista se encuentra vacía")
        @lista.insert_end(@et5)
	@lista.insert_end(@et1)
        expect(@lista.extract_end).to eq(@et1)
	

	end
	
	it "La lista está vacía" do
	
	expect(@lista.empty).to eq(true)

	end 
	
	it "Etiquetas de información nutricional creado correctamente 5. Testeando la sal." do 
	
		
	@lista.insert_end(@et1)
	@lista.insert_end(@et2)
        @lista.insert_end(@et3)
        @lista.insert_end(@et4)
	@lista.insert_end(@et5)
	
	expect(@lista.extract_begin.sal).to eq(0.02)	
	expect(@lista.extract_begin.sal).to eq(0.2)
	expect(@lista.extract_begin.sal).to eq(7)
	expect(@lista.extract_begin.sal).to eq(8)
	expect(@lista.extract_begin.sal).to eq(0.04)
	
	@lista.insert_end(@et1)
        @lista.insert_end(@et2)
        @lista.insert_end(@et3)
        @lista.insert_end(@et4)
        @lista.insert_end(@et5)

	sal_exceso = []
	sal_bien = []
		
	while (@lista.empty == false) do

		sal = @lista.extract_begin.sal

		if (sal > 6)

			sal_exceso.push(sal)
		else
			sal_bien.push(sal)
		end

	end	

	expect(sal_exceso).to eq([7,8])
	expect(sal_bien).to eq([0.02, 0.2, 0.04])	


	end

	
describe "Enumerable" do

	it "collect" do
		@lista.insert_end(@et1)
		@lista.insert_end(@et2)

		expect(@lista.collect{ "helloDarkness" }).to eq(["helloDarkness","helloDarkness"])

	end

	it "select" do 

                @lista.insert_end(@et1)
                @lista.insert_end(@et2)

  		expect(@lista.select {|v| v.nombreEtiqueta == "Nutela"}).to eq([@et2])
		
	end

	it "max" do 

                @lista.insert_end(@et1)
                @lista.insert_end(@et2)
	
		expect(@lista.max {|a,b| a.nombreEtiqueta <=> b.nombreEtiqueta } ).to eq(@et2)
                expect(@lista.max {|a,b| a.grasas <=> b.grasas } ).to eq(@et2)
		

	end

        it "min" do

                @lista.insert_end(@et1)
                @lista.insert_end(@et2)

                expect(@lista.min {|a,b| a.nombreEtiqueta <=> b.nombreEtiqueta } ).to eq(@et1)
                expect(@lista.min {|a,b| a.grasas <=> b.grasas } ).to eq(@et1)
		expect(@lista.min {|a,b| a.grasasSaturadas <=> b.grasasSaturadas } ).to eq(@et2)


        end

        it "sort" do

                @lista.insert_end(@et1)
                @lista.insert_end(@et2)

                expect(@lista.sort {|a,b| a.nombreEtiqueta <=> b.nombreEtiqueta } ).to eq([@et1,@et2])
                expect(@lista.sort {|a,b| a.grasas <=> b.grasas } ).to eq([@et1,@et2])
                expect(@lista.sort {|a,b| a.grasasSaturadas <=> b.grasasSaturadas } ).to eq([@et2,@et1])


        end




end
end
