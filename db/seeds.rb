# frozen_string_literal: true

parana = State.create!(name: 'Paraná')
santa_catarina = State.create!(name: 'Santa Catarina')
rio_grande_do_sul = State.create!(name: 'Rio Grande do Sul')

parana_cities = [
  'Curitiba',
  'Londrina',
  'Maringá',
  'Ponta Grossa',
  'Cascavel',
  'Foz do Iguaçu',
  'Guarapuava',
  'Paranaguá',
  'Apucarana',
  'Campo Mourão'
]
sc_cities = [
  'Florianópolis',
  'Joinville',
  'Blumenau',
  'São José',
  'Chapecó',
  'Criciúma',
  'Itajaí',
  'Jaraguá do Sul',
  'Lages',
  'Palhoça'
]
rs_cities = [
  'Porto Alegre',
  'Caxias do Sul',
  'Pelotas',
  'Santa Maria',
  'Passo Fundo',
  'Novo Hamburgo',
  'Santa Cruz do Sul',
  'Rio Grande',
  'Uruguaiana',
  'Bagé'
]

rs_cities.each do |city_name|
  City.create(name: city_name, state: rio_grande_do_sul)
end
sc_cities.each do |city_name|
  City.create(name: city_name, state: santa_catarina)
end

parana_cities.each do |city_name|
  City.create(name: city_name, state: parana)
end
