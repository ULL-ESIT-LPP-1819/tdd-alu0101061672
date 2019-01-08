class Menu 

  attr_accessor :titulo, :ingesta, :desayuno, :almuerzo, :cena, :dia

  def initialize(dia_a_tomar, &block)
    @dia = dia_a_tomar
    @ingesta = []
    @titulo = []
    @desayuno = []
    @almuerzo = []
    @cena = []
    
    if block_given?  
      if block.arity == 1
        yield self
      else
       instance_eval(&block) 
      end
    end
  end

  def titulo(cadena)
    
    @titulo = cadena

  end

  def desayuno(bf,options = {})
    
    breakfast = bf    

    breakfast << " (#{options[:descripcion]})" if options[:descripcion]
    breakfast << " (#{options[:porcion]})" if options[:porcion]
    breakfast << " (#{options[:gramos]})" if options[:gramos]
    breakfast << " (#{options[:grasas]})" if options[:grasas]
    breakfast << " (#{options[:carbohidratos]})" if options[:carbohidratos]
    breakfast << " (#{options[:proteinas]})" if options[:proteinas]
    breakfast << " (#{options[:fibra]})" if options[:fibra]

       if breakfast[:fibra] == nil
               breakfast[:fibra] = 0.00
       end      

       if breakfast[:sal] == nil
               breakfast[:sal] = 0.00
       end

    @desayuno << breakfast

  end

  def almuerzo(lch, options = {})
    
    lunch = lch
    lunch << " (#{options[:descripcion]})" if options[:descripcion]
    lunch << " (#{options[:porcion]})" if options[:porcion]
    lunch << " (#{options[:gramos]})" if options[:gramos]
    lunch << " (#{options[:grasas]})" if options[:grasas]
    lunch << " (#{options[:carbohidratos]})" if options[:carbohidratos]
    lunch << " (#{options[:proteinas]})" if options[:proteinas]
    lunch << " (#{options[:fibra]})" if options[:fibra]

       if lunch[:fibra] == nil
               lunch[:fibra] = 0.00
       end

       if lunch[:sal] == nil
               lunch[:sal] = 0.00
       end

       
    @almuerzo << lunch

  end

  def cena(dr,options = {})
    
    dinner = dr
    dinner << " (#{options[:descripcion]})" if options[:descripcion]
    dinner << " (#{options[:porcion]})" if options[:porcion]
    dinner << " (#{options[:gramos]})" if options[:gramos]
    dinner << " (#{options[:grasas]})" if options[:grasas]
    dinner << " (#{options[:carbohidratos]})" if options[:carbohidratos]
    dinner << " (#{options[:proteinas]})" if options[:proteinas]
    dinner << " (#{options[:fibra]})" if options[:fibra]
 
       if dinner[:fibra] == nil
               dinner[:fibra] = 0.00
       end

       if dinner[:sal] == nil
               dinner[:sal] = 0.00
       end


    @cena << dinner

  end

  def ingesta(ingest,options = {})
    ing = ingest
    ing << " (#{options[:min]})" if options[:min]
    ing << " (#{options[:max]})" if options[:max]

    @ingesta << ing

  end

  def valor_energetico(comida)
		
	kcal = comida[:grasas] * 9
	kcal += comida[:carbohidratos] * 4
	kcal += comida[:proteinas] * 4
#Si hubiera que tener en cuenta la fibra y la sal, sería de la siguiente manera:
#	if comida[:fibra] == nil
#		comida[:fibra] = 0.00
#	end      
#	kcal += comida[:fibra] * 2
#        if comida[:sal] == nil
#                comida[:sal] = 0.00
#        end
#	kcal += comida[:sal] * 6
	kcal.round(2)


  end



  def to_s
    vet = 0
    output = @dia
    output << "             Composición nutricional\n"
    output << "=======================================\n"
    output << "                        grasas  carbohidratos  proteínas  fibra  sal   valor energetico\n"
    output << "Desayuno\n"
    @desayuno.each do |breakfast|
      vet += valor_energetico(breakfast)
      output << "#{breakfast[:descripcion]}              "  
      output << "#{breakfast[:grasas]}        "
      output << "#{breakfast[:carbohidratos]}         "
      output << "#{breakfast[:proteinas]}      "
      output << "#{breakfast[:fibra]}  "
      output << "#{breakfast[:sal]}      "
      output << "#{valor_energetico(breakfast)}"
      output << "\n"

    end

    output << "Almuerzo\n"
    @almuerzo.each do |lunch|
      vet += valor_energetico(lunch)
      output << "#{lunch[:descripcion]}                  "
      output << "#{lunch[:grasas]}        "
      output << "#{lunch[:carbohidratos]}         "
      output << "#{lunch[:proteinas]}      "
      output << "#{lunch[:fibra]}  "
      output << "#{lunch[:sal]}      "
      output << "#{valor_energetico(lunch)}"
      output << "\n"

    end

    output << "Cena\n"
    @cena.each do |dinner|
      
      vet += valor_energetico(dinner)
      output << "#{dinner[:descripcion]}    "
      output << "#{dinner[:grasas]}        "
      output << "#{dinner[:carbohidratos]}         "
      output << "#{dinner[:proteinas]}     "
      output << "#{dinner[:fibra]}  "
      output << "#{dinner[:sal]}      "
      output << "#{valor_energetico(dinner)}"
      output << "\n"

    end
    
    output << "Valor energético total  #{(vet).round(2)}" 
    output

  end



end
