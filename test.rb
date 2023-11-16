require "google_drive"
require_relative 'tabela'

# session = GoogleDrive::Session.from_config("config.json")

# ws = session.spreadsheet_by_key("1feT1zoeGHuEg11xj86JCaiHMRnbA51s8s9L8E0wM_NY").worksheets[0]
# p ws[3, 1]  # cell(3, 1) prvo ide red pa kolona

# Worksheet.new("1feT1zoeGHuEg11xj86JCaiHMRnbA51s8s9L8E0wM_NY", 0).each do |entry|
#     p entry
# end

t = Tabela.new("1feT1zoeGHuEg11xj86JCaiHMRnbA51s8s9L8E0wM_NY", 0)
          
t.ispis 

t.row(2)
t.each {|row| p row}

p t["PrvaKolona"][1] = 2556
p t["PrvaKolona"].to_s

string = t.prvaKolona.to_s
p string

suma = t.prvaKolona.sum
p suma

average = t.prvaKolona.avg
p average

p t.prvaKolona.map { |cell| cell+=10 }
p t.prvaKolona.select { |cell| cell.to_i < 5 }
p t.prvaKolona.reduce(2) { |suma, n| suma + n }

p t.indeks.rn11622


