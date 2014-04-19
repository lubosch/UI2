class StatReader

  def self.read(file, column)

    merania=[]
    aktualne_meranie = []
    File.open(Rails.root + "app/assets/texts/" + file).each_line do |line|
      if /Meranie/.match line
        merania <<  aktualne_meranie
        aktualne_meranie = []
      else
        a = line.split ';'
        aktualne_meranie << [a[0].to_i , a[column].to_f]
      end


    end

    merania
  end


end