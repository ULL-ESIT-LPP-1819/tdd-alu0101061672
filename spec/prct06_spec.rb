RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end

RSpec.describe Prct06 do
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
		
		expect(alimentosEnvasados.to_s).to eq   "(    Por 100g o 100ml de producto   IR(por 100g 0 100ml de producto)   Por porción de X g   IR(por porción de X g de producto)\nValor energético(kj/kcal)   #{alimentosEnvasados.factor_conversionKcal}   #{alimentosEnvasados.ir_valorEnergetico}   #{alimentosEnvasados.por_porcion_valorEnergetico}   #{alimentosEnvasados.ir_porcion_valorEnergetico}\nGrasas de las cuales:   #{alimentosEnvasados.grasas}   #{alimentosEnvasados.ir_grasas}   #{alimentosEnvasados.por_porcion_grasas}   #{alimentosEnvasados.ir_porcion_grasas}\nSaturadas   #{alimentosEnvasados.grasasSaturadas}   #{alimentosEnvasados.ir_grasasSaturadas}   #{alimentosEnvasados.por_porcion_grasasSaturadas}   #{alimentosEnvasados.ir_porcion_grasasSaturadas}\nMonoinsaturadas   #{alimentosEnvasados.grasasMonoinsaturadas}   #{'-'}   #{alimentosEnvasados.por_porcion_grasasMonoinsaturadas}   #{'-'}\nPoliinsaturadas   #{alimentosEnvasados.grasasPoliinsaturadas}   #{'-'}   #{alimentosEnvasados.por_porcion_grasasPoliinsaturadas}   #{'-'}\nHidratos de carbono de los cuales:   #{alimentosEnvasados.hidratosCarbono}   #{alimentosEnvasados.ir_hidratosCarbono}   #{alimentosEnvasados.por_porcion_hidratosCarbono}   #{alimentosEnvasados.ir_porcion_hidratosCarbono}\nAzucares   #{alimentosEnvasados.azucares}   #{alimentosEnvasados.ir_azucares}   #{alimentosEnvasados.por_porcion_azucares}   #{alimentosEnvasados.ir_porcion_azucares}\nPolialcoholes   #{alimentosEnvasados.polialcoholes}   #{'-'}   #{alimentosEnvasados.por_porcion_polialcoholes}   #{'-'}\nAlmidón   #{alimentosEnvasados.almidon}   #{'-'}   #{alimentosEnvasados.por_porcion_almidon}   #{'-'}\nFibra alimentaria    #{alimentosEnvasados.fibraAlimentaria}   #{'-'}   #{alimentosEnvasados.por_porcion_fibraAlimentaria}   #{'-'}\nProteínas   #{alimentosEnvasados.proteinas}   #{alimentosEnvasados.ir_proteinas}   #{alimentosEnvasados.por_porcion_proteinas}   #{alimentosEnvasados.ir_porcion_proteinas}\nSal   #{alimentosEnvasados.sal}   #{alimentosEnvasados.ir_sal}   #{alimentosEnvasados.por_porcion_sal}   #{alimentosEnvasados.ir_porcion_sal}\nVitamina/mineral   #{alimentosEnvasados.vitaminas}   #{'-'}   #{alimentosEnvasados.por_porcion_vitaminas}   #{'-'}\n)"


	end
end
