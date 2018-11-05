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
		
	end
end
