namespace :slurp do
  desc "TODO"
  
  task contenidos: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "Contenidos_portal.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Contentido.new
      t.nombre = row["CONTENIDO"]
      t.eje_id = row["EJE_ID"]
      t.save
      puts "#{t.nombre} saved"
    end
    
    puts "There are now #{Contentido.count} rows in the contenido table"
    
  end

end
