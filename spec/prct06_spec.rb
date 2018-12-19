RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end

RSpec.describe Prct06 do

	
	 before :each do
                @et1 = Etiqueta.new('Chocolate', 29, 15.1, 8.1, 0.7, 47, 50.1, 0, 3.1, 5.9, 4.2, 0.02, 3, 6)
                @et2 = Etiqueta.new('Nutela', 57.16 ,8.12 , 37.28, 6.72,14.8 ,3.97 ,0 ,0 ,10.3 ,17.64 , 0.2, 0,0 )
                @et3 = Etiqueta.new('Chuleta', 12, 6.54, 6.07, 1.09, 0.8, 0, 0, 0, 0, 19.1, 7, 0.5, 0)
                @et4 = Etiqueta.new('Aceite',92, 14, 69, 9.2, 0, 0, 0, 0, 2.9, 0, 8, 0,0)
                @et5 = Etiqueta.new('Colacao0%', 5.8, 3, 2, 0.8, 40, 5, 0,0, 22, 9.2, 0.04, 0,0)
	
		@menu1= List.new
		@menu2= List.new
		@menu3= List.new
		@menu4= List.new
		@menu5= List.new
                @menu6= Array.new
                @menu7= Array.new
                @menu8= Array.new
                @menu9= Array.new
                @menu10= Array.new

                @pa1 = DatosAntropometricos.new(0.12,"Sonia", "Díaz Santos", "Candelaria", "666666666", 70,160,22, 0, 81,90)
                @pa2 = DatosAntropometricos.new(0.27,"Miriam", "Rodríguez", "Orotava", "999999999", 40,150,23, 0, 70,100)
                @pa3 = DatosAntropometricos.new(0.0,"Jorge", "González", "Orotava", "444444444", 70,187,20, 1, 90, 100)
                @pa4 = DatosAntropometricos.new(0.0,"Alejandro", "González", "Icod", "333333333", 160,190,20, 1, 81,90)
                @pa5 = DatosAntropometricos.new(0.54,"Marta", "García", "San Miguel", "222222222", 56,167,20, 0, 70,95)
                @pa6 = DatosAntropometricos.new(0.12,"Pepito", "Díaz Santos", "Candelaria", "666666666", 90,190,18, 0, 81,90)
                @pa7 = DatosAntropometricos.new(0.27,"Maria", "Rodríguez", "Orotava", "999999999", 60,140,23, 0, 70,100)
                @pa8 = DatosAntropometricos.new(0.0,"Ginny", "González", "Orotava", "444444444", 90,177,20, 1, 90, 100)
                @pa9 = DatosAntropometricos.new(0.0,"Alberto", "González", "Icod", "333333333", 50,190,19, 1, 81,90)
                @pa10 = DatosAntropometricos.new(0.54,"Murtap", "García", "San Miguel", "222222222", 89,150,21, 0, 70,95)


            end


	let(:alimentosEnvasados){Etiqueta.new('Chocolate', 29, 15.1, 8.1, 0.7, 47, 50.1, 0, 3.1, 5.9, 4.2, 0.02, 3, 6)}
	it "Inicialización realizada correctamente" do
#alimentosEnvasados = Etiqueta.new('Chocolate', 29, 15.1, 8.1, 0.7, 47, 50.1, 0, 3.1, 5.9, 4.2, 0.02, 3, 6)
		expect(alimentosEnvasados.nombreEtiqueta).to eq("Chocolate")	
		expect(alimentosEnvasados.grasas).to eq(29)
		expect(alimentosEnvasados.grasasSaturadas).to eq(15.1)
		expect(alimentosEnvasados.grasasMonoinsaturadas).to eq(8.1)
		expect(alimentosEnvasados.grasasPoliinsaturadas).to eq(0.7)
		expect(alimentosEnvasados.hidratosCarbono).to eq(47)
		expect(alimentosEnvasados.azucares).to eq(50.1)
		expect(alimentosEnvasados.polialcoholes).to eq(0)
		expect(alimentosEnvasados.almidon).to eq(3.1)
		expect(alimentosEnvasados.fibraAlimentaria).to eq(5.9)
		expect(alimentosEnvasados.proteinas).to eq(4.2)
		expect(alimentosEnvasados.sal).to eq(0.02)
		expect(alimentosEnvasados.vitaminas).to eq(3)
		expect(alimentosEnvasados.minerales).to eq(6)

	end

	it "Factor de conversión funcionando correctamente" do 
		
		alimentosEnvasados.factor_conversionKJ
		alimentosEnvasados.factor_conversionKcal
		expect(alimentosEnvasados.factor_conversionKJ).to eq(3779.8)
		expect(alimentosEnvasados.factor_conversionKcal).to eq(905.62)
	end

	it "Ingesta de Referencia -IR- funcionando correctamente" do
		
		expect(alimentosEnvasados.ir_valorEnergetico).to eq(0.45)
		expect(alimentosEnvasados.ir_grasas).to eq(0.41)
		expect(alimentosEnvasados.ir_grasasSaturadas).to eq(0.76)
		expect(alimentosEnvasados.ir_hidratosCarbono).to eq(0.18)
		expect(alimentosEnvasados.ir_azucares).to eq(0.56)
		expect(alimentosEnvasados.ir_proteinas).to eq(0.08)
		expect(alimentosEnvasados.ir_sal).to eq(0.00)
			
		expect(alimentosEnvasados.to_s2).to eq   "(    Por 100g o 100ml de producto   IR(por 100g 0 100ml de producto)   Por porción de X g   IR(por porción de X g de producto)\nValor energético(kj/kcal)   #{alimentosEnvasados.factor_conversionKcal}   #{alimentosEnvasados.ir_valorEnergetico}   #{'-'}   #{'-'}\nGrasas de las cuales:   #{alimentosEnvasados.grasas}   #{alimentosEnvasados.ir_grasas}   #{'-'}   #{'-'}\nSaturadas   #{alimentosEnvasados.grasasSaturadas}   #{alimentosEnvasados.ir_grasasSaturadas}   #{'-'}   #{'-'}\nMonoinsaturadas   #{alimentosEnvasados.grasasMonoinsaturadas}   #{'-'}   #{'-'}   #{'-'}\nPoliinsaturadas   #{alimentosEnvasados.grasasPoliinsaturadas}   #{'-'}   #{'-'}   #{'-'}\nHidratos de carbono de los cuales:   #{alimentosEnvasados.hidratosCarbono}   #{alimentosEnvasados.ir_hidratosCarbono}   #{'-'}   #{'-'}\nAzucares   #{alimentosEnvasados.azucares}   #{alimentosEnvasados.ir_azucares}   #{'-'}   #{'-'}\nPolialcoholes   #{alimentosEnvasados.polialcoholes}   #{'-'}   #{'-'}   #{'-'}\nAlmidón   #{alimentosEnvasados.almidon}   #{'-'}   #{'-'}   #{'-'}\nFibra alimentaria    #{alimentosEnvasados.fibraAlimentaria}   #{'-'}   #{'-'}   #{'-'}\nProteínas   #{alimentosEnvasados.proteinas}   #{alimentosEnvasados.ir_proteinas}   #{'-'}   #{'-'}\nSal   #{alimentosEnvasados.sal}   #{alimentosEnvasados.ir_sal}   #{'-'}   #{'-'}\nVitamina/mineral   #{alimentosEnvasados.vitaminas}   #{'-'}   #{'-'}   #{'-'}\n)"
	
	end
	
	it "Porciones realizadas con éxito" do
		
		expect(alimentosEnvasados.por_porcion_valorEnergetico).to eq(226.41)
		expect(alimentosEnvasados.por_porcion_grasas).to eq(7)
		expect(alimentosEnvasados.por_porcion_grasasSaturadas).to eq(3.78)
		expect(alimentosEnvasados.por_porcion_grasasMonoinsaturadas).to eq(2.03)
		expect(alimentosEnvasados.por_porcion_grasasPoliinsaturadas).to eq(0.18)
		expect(alimentosEnvasados.por_porcion_hidratosCarbono).to eq(11)
		expect(alimentosEnvasados.por_porcion_azucares).to eq(12.53)
		expect(alimentosEnvasados.por_porcion_polialcoholes).to eq(0)
		expect(alimentosEnvasados.por_porcion_almidon).to eq(0.78)
		expect(alimentosEnvasados.por_porcion_fibraAlimentaria).to eq(1.48)
		expect(alimentosEnvasados.por_porcion_proteinas).to eq(1.05)
		expect(alimentosEnvasados.por_porcion_sal).to eq(0.01)
		expect(alimentosEnvasados.por_porcion_vitaminas).to eq(0)


	end
	
	it "IR con porciones" do

		expect(alimentosEnvasados.ir_porcion_valorEnergetico).to eq(0.11)
                expect(alimentosEnvasados.ir_porcion_grasas).to eq(0.1)
                expect(alimentosEnvasados.ir_porcion_grasasSaturadas).to eq(0.19)
		expect(alimentosEnvasados.ir_porcion_hidratosCarbono).to eq(0.04)
                expect(alimentosEnvasados.ir_porcion_azucares).to eq(0.14)
                expect(alimentosEnvasados.ir_porcion_proteinas).to eq(0.02)
                expect(alimentosEnvasados.ir_porcion_sal).to eq(0.00)
		
		expect(alimentosEnvasados.to_s3).to eq   "(    Por 100g o 100ml de producto   IR(por 100g 0 100ml de producto)   Por porción de X g   IR(por porción de X g de producto)\nValor energético(kj/kcal)   #{alimentosEnvasados.factor_conversionKcal}   #{alimentosEnvasados.ir_valorEnergetico}   #{alimentosEnvasados.por_porcion_valorEnergetico}   #{alimentosEnvasados.ir_porcion_valorEnergetico}\nGrasas de las cuales:   #{alimentosEnvasados.grasas}   #{alimentosEnvasados.ir_grasas}   #{alimentosEnvasados.por_porcion_grasas}   #{alimentosEnvasados.ir_porcion_grasas}\nSaturadas   #{alimentosEnvasados.grasasSaturadas}   #{alimentosEnvasados.ir_grasasSaturadas}   #{alimentosEnvasados.por_porcion_grasasSaturadas}   #{alimentosEnvasados.ir_porcion_grasasSaturadas}\nMonoinsaturadas   #{alimentosEnvasados.grasasMonoinsaturadas}   #{'-'}   #{alimentosEnvasados.por_porcion_grasasMonoinsaturadas}   #{'-'}\nPoliinsaturadas   #{alimentosEnvasados.grasasPoliinsaturadas}   #{'-'}   #{alimentosEnvasados.por_porcion_grasasPoliinsaturadas}   #{'-'}\nHidratos de carbono de los cuales:   #{alimentosEnvasados.hidratosCarbono}   #{alimentosEnvasados.ir_hidratosCarbono}   #{alimentosEnvasados.por_porcion_hidratosCarbono}   #{alimentosEnvasados.ir_porcion_hidratosCarbono}\nAzucares   #{alimentosEnvasados.azucares}   #{alimentosEnvasados.ir_azucares}   #{alimentosEnvasados.por_porcion_azucares}   #{alimentosEnvasados.ir_porcion_azucares}\nPolialcoholes   #{alimentosEnvasados.polialcoholes}   #{'-'}   #{alimentosEnvasados.por_porcion_polialcoholes}   #{'-'}\nAlmidón   #{alimentosEnvasados.almidon}   #{'-'}   #{alimentosEnvasados.por_porcion_almidon}   #{'-'}\nFibra alimentaria    #{alimentosEnvasados.fibraAlimentaria}   #{'-'}   #{alimentosEnvasados.por_porcion_fibraAlimentaria}   #{'-'}\nProteínas   #{alimentosEnvasados.proteinas}   #{alimentosEnvasados.ir_proteinas}   #{alimentosEnvasados.por_porcion_proteinas}   #{alimentosEnvasados.ir_porcion_proteinas}\nSal   #{alimentosEnvasados.sal}   #{alimentosEnvasados.ir_sal}   #{alimentosEnvasados.por_porcion_sal}   #{alimentosEnvasados.ir_porcion_sal}\nVitamina/mineral   #{alimentosEnvasados.vitaminas}   #{'-'}   #{alimentosEnvasados.por_porcion_vitaminas}   #{'-'}\n)"


	end

describe "Comparable" do

	it "Menor < (grasas)" do 
	
		expect(@et1.grasas < @et2.grasas).to eq(true)
	
	end

        it "Menor < (nombreEtiqueta)" do

        	expect(@et2.nombreEtiqueta < @et3.nombreEtiqueta).to eq(false)    

        end

        it "Mayor > " do

                expect(@et1.grasas > @et2.grasas).to eq(false)

        end

        it "Igual == (grasas)" do

                expect(@et1.grasas == @et2.grasas).to eq(false)

        end

        it "Igual == (nombreEtiqueta)" do

                expect(@et3.grasas == @et4.grasas).to eq(false)

        end
	

        it "Mayor o igual >= " do

                expect(@et1.grasas >= @et2.grasas).to eq(false)

        end

        it "Menor o igual <= " do

                expect(@et1.grasas <= @et2.grasas).to eq(true)

        end

        it "Between" do

                expect(@et1.between?(@et2,@et3)).to eq(false)

        end

end

describe "Métodos menú"  do


        it "collect" do

                @menu1.insert_end(@et1)
                @menu1.insert_end(@et2)
                @menu1.insert_end(@et5)

                expect(@menu1.collect{ "Etiquetas" }).to eq(["Etiquetas","Etiquetas","Etiquetas"])

        end

        it "zip" do

                @menu1.insert_end(@et1)
                @menu1.insert_end(@et2)

                @menu2.insert_end(@et3)
                @menu2.insert_end(@et4)

                expect(@menu1.zip(@menu2)).to eq([[@et1,@et3],[@et2,@et4]])

        end
 

 
        it "inject" do

                @menu1.insert_end(@et1)
                @menu1.insert_end(@et2)
                @menu1.insert_end(@et3)
                @menu1.insert_end(@et4)
                @menu1.insert_end(@et5)

                expect(@menu1.inject(0) {|sum,n| (sum + n.factor_conversionKcal).round(2)}).to eq(4486.52)

        end

        it "reduce" do

                @menu1.insert_end(@et1)
                @menu1.insert_end(@et2)
                @menu1.insert_end(@et3)
                @menu1.insert_end(@et4)
                @menu1.insert_end(@et5)

                expect(@menu1.reduce(0) {|sum, num| (sum + num.factor_conversionKcal).round(2) } ).to eq(4486.52)

        end
	
	it "Viendo si eres un gordo" do


                @menu1.insert_end(@et1)
                @menu1.insert_end(@et2)
                @menu1.insert_end(@et3)

                @menu2.insert_end(@et4)
                @menu2.insert_end(@et5)
                @menu2.insert_end(@et1)

                @menu3.insert_end(@et3)
                @menu3.insert_end(@et4)

                @menu4.insert_end(@et4)
                @menu4.insert_end(@et5)
                @menu4.insert_end(@et1)
                @menu4.insert_end(@et2)
                @menu4.insert_end(@et3)

                @menu5.insert_end(@et4)
                @menu5.insert_end(@et5)


		#menu1  pa1

		expect(@menu1.get_value.factor_conversionKcal).to eq(905.62)
		expect(@menu1.reduce(0) {|sum, num| (sum + num.factor_conversionKcal).round(2) } ).to eq(2409.48)
		expect((@pa1.gasto_energetico_total).round(2)).to eq(1743.38)
                #10% de margen de error

		gastototal= (@pa1.gasto_energetico_total)
		kcalmenu1 = @menu1.reduce(0) {|sum, num| (sum + num.factor_conversionKcal).round(2) } 
		percenttop=(kcalmenu1*0.9).round(2)
		percentbottom=(kcalmenu1*1.1).round(2)               
        
                expect((kcalmenu1*0.9).round(2)).to eq(2168.53)

	        expect(gastototal.between?(percenttop,percentbottom)).to eq(false)

		#menu2 pa2
		
                gastototal2= (@pa2.gasto_energetico_total)
                kcalmenu2 = @menu2.reduce(0) {|sum, num| (sum + num.factor_conversionKcal).round(2) }
                percenttop2=(kcalmenu2*0.9).round(2)
                percentbottom2=(kcalmenu2*1.1).round(2)

                expect(gastototal2.between?(percenttop2,percentbottom2)).to eq(false)

		#menu3 pa3

                gastototal3= (@pa3.gasto_energetico_total)
                kcalmenu3 = @menu3.reduce(0) {|sum, num| (sum + num.factor_conversionKcal).round(2) }
                percenttop3=(kcalmenu3*0.9).round(2)
                percentbottom3=(kcalmenu3*1.1).round(2)

                expect(gastototal3.between?(percenttop3,percentbottom3)).to eq(true)

		#menu4 pa4

                gastototal4= (@pa4.gasto_energetico_total)
                kcalmenu4 = @menu4.reduce(0) {|sum, num| (sum + num.factor_conversionKcal).round(2) }
                percenttop4=(kcalmenu4*0.9).round(2)
                percentbottom4=(kcalmenu4*1.1).round(2)

                expect(gastototal4.between?(percenttop4,percentbottom4)).to eq(false)
	
		#menu5 pa5

                gastototal5= (@pa5.gasto_energetico_total)
                kcalmenu5 = @menu5.reduce(0) {|sum, num| (sum + num.factor_conversionKcal).round(2) }
                percenttop5=(kcalmenu5*0.9).round(2)
                percentbottom5=(kcalmenu5*1.1).round(2)

                expect(gastototal5.between?(percenttop5,percentbottom5)).to eq(true)


	end
end


describe "Práctica 11"  do


        it "Array de 10 menús" do
		
		@menu6=[@et1,@et4].reduce('+')
		@menu7=[@et2,@et5].reduce('+')
                @menu8=[@et3,@et1,@et4].reduce(0) {|sum, num| (sum + num.factor_conversionKcal).round(2) }

                @menu9=[@et4,@et2].reduce('+')
                @menu10=[@et5,@et3].reduce('+').round(2)	

		@vector_menus =[@menu6,@menu7,@menu8,@menu9,@menu10]
		expect(@vector_menus).to eq([2617.22, 1516.4, 2970.12, 2862.56, 718.34])
		expect(@menu7).to eq(1516.4)
		expect(@vector_menus.buclefor).to eq([718.34, 1516.4, 2617.22, 2862.56, 2970.12])
	
	end

        it "Lista de 10 pacientes" do
		
		@listapa= List.new
		@listapa.insert_end(@pa1)
                @listapa.insert_end(@pa2)
                @listapa.insert_end(@pa3)
                @listapa.insert_end(@pa4)
                @listapa.insert_end(@pa5)
                @listapa.insert_end(@pa6)
                @listapa.insert_end(@pa7)
                @listapa.insert_end(@pa8)
                @listapa.insert_end(@pa9)
                @listapa.insert_end(@pa10)

		



        end


end

end
