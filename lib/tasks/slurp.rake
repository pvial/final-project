namespace :slurp do
  desc "TODO"
  
  task contenidos: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "Contenidos_portal2.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Contentido.new
      t.nombre = row["CONTENIDO"]
      t.eje_id = row["EJE_ID"]
      puts "#{t.eje_id}"
      t.final=1
      if t.valid?
        t.save
        puts "#{t.nombre} saved"
      else
        puts "#{t.nombre} /// no guardado"
      end
    end
    
    puts "There are now #{Contentido.count} rows in the contenido table"
    
  end
  
  task subcontenidos: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "Contenidos_portal.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = SubContenido.new
      t.nombre = row["SUBCONTENIDO"]
      t.contenido_id = row["CONTENIDO_ID"]
      t.save
      puts "#{t.nombre} saved"
    end
    
    puts "There are now #{SubContenido.count} rows in the contenido table"
    
  end
  
  task update_contenidos: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "oa.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      i = row["CONT_ID"]
      puts "empezó #{i}" 
            t=Contentido.find(i)
      t.oa = row["OA"]
      puts "#{t.oa}"
      if t.valid?
        t.save
        puts "#{t.oa} saved"
      else
        puts "#{t.oa} /// no guardado"
      end
    end
    
    puts "There are now #{Contentido.count} rows in the contenido table"
    
  end

end
