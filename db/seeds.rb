# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Transtorno Bipolar Tipo 1
d = Doenca.new(nome:"Transtorno Bipolar Tipo 1",min_qtd_sint:8,pagina:"123")
d.save
s1 = Sintoma.new(nome:"Período distinto de humor anormal e persistentemente elevado, expansivo ou irritável", sintoma_obrigatorio:true)

s2 = Sintoma.new(nome:"Aumento anormal e persistente da atividade dirigida a objetos ou da energia", sintoma_obrigatorio:true)

s3 = Sintoma.new(nome:"Autoestima inflada ou grandiosidade", sintoma_obrigatorio:false)

s4 = Sintoma.new(nome:"Redução da necessidade de sono", sintoma_obrigatorio:false)

s5 = Sintoma.new(nome:"Mais loquaz que o habitual ou pressão para continuar falando", sintoma_obrigatorio:false)

s6 = Sintoma.new(nome:"Fuga de ideias ou experiência subjetiva de que os pensamentos são acelerados", sintoma_obrigatorio:false)

s7 = Sintoma.new(nome:"Distrabilidade", sintoma_obrigatorio:false)

s8 = Sintoma.new(nome:"Envolvimento excessivo em atividades com elevado potencial para consequências dolorosas", sintoma_obrigatorio:false)

s9 = Sintoma.new(nome:"A perturbação do humor maníaco é suficientemente grave a ponto de causar prejuízo acentuado no funcionamento social ou profissional ou para necessitar de hospitalização a fim de prevenir dano a si mesmo ou a outras pessoas, ou existem características psicóticas", sintoma_obrigatorio:true)

s10 = Sintoma.new(nome:"Humor deprimido", sintoma_obrigatorio:false)

s11 = Sintoma.new(nome:"Acentuada diminuição de interesse ou prazer em todas, ou quase todas, as atividades", sintoma_obrigatorio:false)

s12 = Sintoma.new(nome:"Perda ou ganho significativo de peso sem estar fazendo dieta", sintoma_obrigatorio:false)

s13 = Sintoma.new(nome:"Insônia ou hipersonia", sintoma_obrigatorio:false)

s14 = Sintoma.new(nome:"Agitação ou retardo psicomotor", sintoma_obrigatorio:false)

s15 = Sintoma.new(nome:"Fadiga ou perda de energia", sintoma_obrigatorio:false)

s16 = Sintoma.new(nome:"Sentimentos de inutilidade ou culpa excessiva ou inapropriada", sintoma_obrigatorio:false)

s17 = Sintoma.new(nome:"Capacidade diminuída para pensar ou se concentrar", sintoma_obrigatorio:false)

s18 = Sintoma.new(nome:"Pensamentos recorrentes de morte, ideação suicida recorrente sem um plano específico, tentativa de suicídio ou plano específico para cometer suicídio", sintoma_obrigatorio:false)

s19 = Sintoma.new(nome:"Ao menos um episódio maníaco", sintoma_obrigatorio:true)

s20 = Sintoma.new(nome:"O episódio maníaco é antecedido ou seguido por episódios hipomaníacos ou depressivos maiores", sintoma_obrigatorio:true)

d.sintomas_doenca.create(sintoma: s1)
d.sintomas_doenca.create(sintoma: s2)
d.sintomas_doenca.create(sintoma: s3)
d.sintomas_doenca.create(sintoma: s4)
d.sintomas_doenca.create(sintoma: s5)
d.sintomas_doenca.create(sintoma: s6)
d.sintomas_doenca.create(sintoma: s7)
d.sintomas_doenca.create(sintoma: s8)
d.sintomas_doenca.create(sintoma: s9)
d.sintomas_doenca.create(sintoma: s10)
d.sintomas_doenca.create(sintoma: s11)
d.sintomas_doenca.create(sintoma: s12)
d.sintomas_doenca.create(sintoma: s13)
d.sintomas_doenca.create(sintoma: s14)
d.sintomas_doenca.create(sintoma: s15)
d.sintomas_doenca.create(sintoma: s16)
d.sintomas_doenca.create(sintoma: s17)
d.sintomas_doenca.create(sintoma: s18)
d.sintomas_doenca.create(sintoma: s19)
d.sintomas_doenca.create(sintoma: s20)
#

#Transtorno Bipolar Tipo 2
d = Doenca.new(nome:"Transtorno Bipolar Tipo 2",min_qtd_sint:8,pagina:"132")
d.save

s21 = Sintoma.new(nome:"O episódio hipomaníaco não é suficientemente grave a ponto de causar prejuízo acentuado no funcionamento social ou profissional ou para necessitar de hospitalização.", sintoma_obrigatorio:true)

s22 = Sintoma.new(nome:"Ao menos um episódio hipomaníaco mesclado com os episódios depressivos maiores", sintoma_obrigatorio:true)

s23 = Sintoma.new(nome:" Jamais houve um episódio maníaco", sintoma_obrigatorio:true)


d.sintomas_doenca.create(sintoma: s1)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s2)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s3)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s4)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s5)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s6)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s7)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s8)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s10)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s11)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s12)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s13)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s14)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s15)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s16)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s17)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s18)#Objeto reutilizado do transtorno anterior
d.sintomas_doenca.create(sintoma: s21)
d.sintomas_doenca.create(sintoma: s22)
d.sintomas_doenca.create(sintoma: s23)
#

d = Doenca.new(nome:"doença só opc",min_qtd_sint:2,pagina:"555")
d.save
s1 = Sintoma.new(nome:"opc1", sintoma_obrigatorio:false)
s2 = Sintoma.new(nome:"opc2", sintoma_obrigatorio:false)
s3 = Sintoma.new(nome:"opc3", sintoma_obrigatorio:false)
d.sintomas_doenca.create(sintoma: s1)
d.sintomas_doenca.create(sintoma: s2)
d.sintomas_doenca.create(sintoma: s3)

d = Doenca.new(nome:"doença só obg",min_qtd_sint:2,pagina:"666")
d.save
s5 = Sintoma.new(nome:"obg1", sintoma_obrigatorio:true)
s6 = Sintoma.new(nome:"obg2", sintoma_obrigatorio:true)
d.sintomas_doenca.create(sintoma: s5)
d.sintomas_doenca.create(sintoma: s6)
#
#Para buscas essa associação d.sintomas_doenca.map

#Associando Sintomas ja cadastrados com doenças novas
#(TA BUGADO)
#s = Sintoma.where(id:1)
#s2 = Sintoma.where(id:2)
#d = Doenca.new(nome:"Doença 2",min_qtd_sint:2,pagina:"394")
#d.save
#d.sintomas_doenca.create(sintoma: s)
