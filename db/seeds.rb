# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Populando sintomas
s = Sintoma.new(nome:"Sintoma 1", sintoma_obrigatorio:false)
s.save
s = Sintoma.new(nome:"Sintoma 2", sintoma_obrigatorio:false)
s.save
s = Sintoma.new(nome:"Sintoma 3", sintoma_obrigatorio:false)
s.save
s = Sintoma.new(nome:"Sintoma 4", sintoma_obrigatorio:false)
s.save
s = Sintoma.new(nome:"Sintoma 5", sintoma_obrigatorio:true)
s.save

#Populando Doenças
d = Doenca.new(nome:"Gripe",min_qtd_sint:"2",pagina:"111")
d.save
d = Doenca.new(nome:"Dor de Garganta",min_qtd_sint:"1",pagina:"134")
d.save

#Populando a associação sintomas_doenca
s = Sintoma.new(nome:"Sintoma 6", sintoma_obrigatorio:false)
s.save
d = Doenca.new(nome:"Doença 1",min_qtd_sint:1,pagina:"334")
d.save
d.sintomas_doenca.create(sintoma: s)

s = Sintoma.new(nome:"Sintoma x", sintoma_obrigatorio:false)
s.save
d = Doenca.new(nome:"Doença 88",min_qtd_sint:2,pagina:"764")
d.save
d.sintomas_doenca.create(sintoma: s)

s = Sintoma.new(nome:"Sintoma 40", sintoma_obrigatorio:false)
s.save
s2 = Sintoma.new(nome:"Sintoma 41", sintoma_obrigatorio:false)
s2.save
s3 = Sintoma.new(nome:"Sintoma Texto grande para ver se quebra na listagem dos sintomas bla bla bla blabla blabla blabla blabla blabla blabla blabla bla", sintoma_obrigatorio:false)
s3.save
d = Doenca.new(nome:"Doença HHJ",min_qtd_sint:2,pagina:"764")
d.save
d.sintomas_doenca.create(sintoma: s)
d.sintomas_doenca.create(sintoma: s2)
d.sintomas_doenca.create(sintoma: s3)

s = Sintoma.new(nome:"Sintoma 91", sintoma_obrigatorio:true)
s.save
s2 = Sintoma.new(nome:"Sintoma 92", sintoma_obrigatorio:true)
s2.save
s3 = Sintoma.new(nome:"Sintoma 93 Texto grande para ver se quebra na listagem dos sintomas bla bla bla blabla blabla blabla blabla blabla blabla blabla bla", sintoma_obrigatorio:true)
s3.save
s4 = Sintoma.new(nome:"Sintoma 94 Texto grande para ver se quebra na listagem dos sintomas bla bla bla blabla blabla blabla blabla blabla blabla blabla bla", sintoma_obrigatorio:true)
s4.save
d = Doenca.new(nome:"Doença Hxfg",min_qtd_sint:4,pagina:"444")
d.save
d.sintomas_doenca.create(sintoma: s)
d.sintomas_doenca.create(sintoma: s2)
d.sintomas_doenca.create(sintoma: s3)
d.sintomas_doenca.create(sintoma: s4)

s = Sintoma.new(nome:"Dor no percoço", sintoma_obrigatorio:true)
s.save
s2 = Sintoma.new(nome:"Desconforto na garganta", sintoma_obrigatorio:false)
s2.save
d = Doenca.new(nome:"Torcicolo",min_qtd_sint:1,pagina:"334")
d.save
d.sintomas_doenca.create(sintoma: s)
d.sintomas_doenca.create(sintoma: s2)
#Para buscas essa associação d.sintomas_doenca.map

#Associando Sintomas ja cadastrados com doenças novas
#(TA BUGADO)
#s = Sintoma.where(id:1)
#s2 = Sintoma.where(id:2)
#d = Doenca.new(nome:"Doença 2",min_qtd_sint:2,pagina:"394")
#d.save
#d.sintomas_doenca.create(sintoma: s)
