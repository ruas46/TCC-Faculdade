# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
User.create(:email=>"guilhermeruas@hotmail.com",:password => "1q2w3e4r", :password_confirmation => "1q2w3e4r")
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
################################################################################
g1 = Grafico.new(grafico_id:1,porcentagem:30,qtd_entrevistados:"6476 individuos acida de 15 anos",ano:1997,estudo:"Comunidade")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:23,qtd_entrevistados:"1.277 individuos acida de 15 anos",ano:1999,estudo:"Comunidade")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:35,qtd_entrevistados:"621 individuos acida de 15 anos",ano:2000,estudo:"Comunidade")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:36,qtd_entrevistados:"483 individuos acida de 19 anos",ano:2005,estudo:"Comunidade")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:30,qtd_entrevistados:"1.327 individuos acida de 40 anos",ano:2009,estudo:"Comunidade")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:42,qtd_entrevistados:"250 professores",ano:2004,estudo:"Professores")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:56,qtd_entrevistados:"808 professores",ano:2005,estudo:"Professores")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:50,qtd_entrevistados:"751 professores",ano:2006,estudo:"Professores")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:21,qtd_entrevistados:"468 professores",ano:2008,estudo:"Professores")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:20,qtd_entrevistados:"925 motoristas e cobradores de ônibus",ano:1998,estudo:"Trabalhadores")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:38,qtd_entrevistados:"1.282 trabalhadores rurais",ano:1999,estudo:"Trabalhadores")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:36,qtd_entrevistados:"1.479 trabalhadores rurais",ano:2000,estudo:"Trabalhadores")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:28,qtd_entrevistados:"3.526 funcionários de uma universidade do RJ",ano:2004,estudo:"Trabalhadores")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:26,qtd_entrevistados:"80 trabalhadores de enfermagem",ano:2007,estudo:"Trabalhadores")
g1.save
g1 = Grafico.new(grafico_id:1,porcentagem:43,qtd_entrevistados:"141 Agentes Comunitários de Saúde",ano:2008,estudo:"Trabalhadores")
g1.save

g2 = Grafico.new(grafico_id:2,porcentagem:43,qtd_entrevistados:"Primeiros 6 meses pós-natais",ano:1998,estudo:"Até primeiros 6 meses pós-natais")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:36,qtd_entrevistados:"Entre 6 e 24 semanas pós-natais",ano:1999,estudo:"Até primeiros 6 meses pós-natais")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:22,qtd_entrevistados:"Entre 8 e 12 semanas pós-natais",ano:2004,estudo:"Até primeiros 3 meses pós-natais")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:16,qtd_entrevistados:"Décimo dia pós-natal",ano:2004,estudo:"Até primeiro mês pós-natal")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:37,qtd_entrevistados:"Entre 12 e 16 semanas pós-natais",ano:2005,estudo:"Até primeiros 6 meses pós-natais")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:24,qtd_entrevistados:"Entre 6 e 12 semanas pós-natais",ano:2006,estudo:"Até primeiros 3 meses pós-natais")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:18,qtd_entrevistados:"Segundo ou 3ºdia pós-natal",ano:2007,estudo:"Até primeiro mês pós-natal")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:39,qtd_entrevistados:"Entre 31 e 180 dias pós-natais",ano:2007,estudo:"Até primeiros 6 meses pós-natais")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:21,qtd_entrevistados:"Entre 6 e 8 semanas pós-natais",ano:2008,estudo:"Até primeiros 3 meses pós-natais")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:23,qtd_entrevistados:"Até 20 dias pós-natais",ano:2008,estudo:"Até primeiro mês pós-natal")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:27,qtd_entrevistados:"Entre 40 e 90 dias pós-natais",ano:2009,estudo:"Até primeiros 3 meses pós-natais")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:28,qtd_entrevistados:"Entre 9 e 12 semanas pós-natais",ano:2010,estudo:"Até primeiros 3 meses pós-natais")
g2.save
g2 = Grafico.new(grafico_id:2,porcentagem:7,qtd_entrevistados:"Entre 2 e 26 semanas pós-natais",ano:2010,estudo:"Até primeiros 6 meses pós-natais")
g2.save

g3 = Grafico.new(grafico_id:3,porcentagem:16,qtd_entrevistados:"5.656 bombeiros. Aqueles com TEPT provável eram 2,2 vezes mais propensos a relatar aumento no uso de álcool no follow-up, sugerindo que essas pessoas aumentaram o uso como uma forma de auto-medicação",ano:2010,estudo:"Bombeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:12,qtd_entrevistados:"52 bombeiros. Padrões disfuncionais de autoavaliação, como baixa autoeficácia, culpa, avaliação negativa de si e do mundo como fatores ligados ao TEPT.",ano:2007,estudo:"Bombeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:12,qtd_entrevistados:"8.487 bombeiros. Após 11 de setembro, 18% relatou comprometimento social ou ocupacional; 16% relataram dificuldade no funcionamento em casa, 9% relataram dificuldade funcionamento no trabalho, e ambos os fatores foram maiores no grupo exposto severamente",ano:2009,estudo:"Bombeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:17,qtd_entrevistados:"8.487 bombeiros. Enquanto a amostra estudada apresentou 25,6% de estresse agudo, o grupo não exposto apresentou percentagem de apenas 2,4%. Também foram encontradas diferenças significativas de depressão aos sete meses (16,4% versus 10%) e depressão aos 13 meses (21,7% versus 12,6%).",ano:2004,estudo:"Bombeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:17,qtd_entrevistados:"43 bombeiros. A hostilidade e a baixa autoeficácia foram consideradas desencadeadores de sintomas de TEPT, depressão, ansiedade, alexitimia e morbidade geral",ano:2005,estudo:"Bombeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:11,qtd_entrevistados:"10.123 profissionais de resgate. Após 11 de setembro, 18% relatou compromentimento social ou ocupacional; 16% relataram dificuldade no funcionamento em casa, 9% relataram dificuldade funcionamento o trabalho, e ambos os fatores foram maiores no grupo exposto severamente",ano:2008,estudo:"Profissionais de resgate")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:13,qtd_entrevistados:"176 bombeiros. A hostilidade e a baixa autoeficácia foram consideradas desencadeadores de sintomas de TEPT, depressão, ansiedade, alexitimia e morbidade geral",ano:2002,estudo:"Bombeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:14,qtd_entrevistados:"28.692 profissionais de resgate. A prevalência de depressão chegou a 38,5% em unidade SARS e 6,7% em não-SARS. Entretanto, os sintomas foram diminuindo à medida que a epidemia também diminuiu. O mesmo ocorreu com a taxa de insônia (47,1% em unidades SARS e 9,4% em não-SARS) e ansiede, estabilizando ao final da pesquisa.",ano:2007,estudo:"Profissionais de resgate")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:14,qtd_entrevistados:"1.741 enfermeiros. A prevalência de depressão chegou a 38,5% em unidade SARS e 6,7% em não-SARS. Entretanto, os sintomas foram diminuindo à medida que a epidemia também diminuiu. O mesmo ocorreu com a taxa de insônia (47,1% em unidades SARS e 9,4% em não-SARS) e ansiede, estabilizando ao final da pesquisa.",ano:2007,estudo:"Enfermeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:30,qtd_entrevistados:"446 enfermeiros. Nas participantes expostas, a taxa de depressão chegou a 27,1% e ideação suicida a 8,6%.",ano:2012,estudo:"Enfermeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:30,qtd_entrevistados:"100 enfermeiros. Padrões cognitivos disfuncionais de autoavaliação e avaliação negativa sobre o mundo foram fatores ligados ao TEPT. A ruminação dos pensamentos intrusivos, ou a tentativa de suprimí-los, também foram associadas com maior sintomatologia, mesmo quando a freqüência de intrusões foi controlada.",ano:2008,estudo:"Enfermeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:19,qtd_entrevistados:"617 enfermeiros. Conflitos entre casa e trabalho, tensão com colegas, natureza imprevisível do trabalho e incidentes envolvendo crianças foram considerados fortes preditores de ansiedade. Juntas, essas variáveis representaram 38% da variância de ansiedade. Um conjunto semelhante de preditores corresponde a um total de 31% na variância de depressão.",ano:2005,estudo:"Enfermeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:27,qtd_entrevistados:"225 bombeiros. Apoio social pode impactar TEPT, principalmente através de sua correlação própria com interações sociais negativas e medo da emoção.",ano:2011,estudo:"Bombeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:15,qtd_entrevistados:"362 enfermeiros. O senso de coerência é inversamente proporcional ao risco de TEPT.",ano:2003,estudo:"Enfermeiros")
g3.save
g3 = Grafico.new(grafico_id:3,porcentagem:22,qtd_entrevistados:"128 bombeiros. Bombeiros com maior chance de apresentar TEPT tinham maior comprometimento da saúde e maiores sintomas de estresse. Associação entre sintomas de TEPT e baixo suporte social",ano:2008,estudo:"Bombeiros")
g3.save

################################################################################
#SEED DE CATEGORIAS DE TRANSTORNOS
c0 = Categorium.new(nome:"Indefinido")
c0.save
c1 = Categorium.new(nome:"Bipolar e relacionados")
c1.save
c2 = Categorium.new(nome:"Depressivos")
c2.save
c3 = Categorium.new(nome:"Ansiedade")
c3.save
c4 = Categorium.new(nome:"Obsessivos-compulsivos")
c4.save
c5 = Categorium.new(nome:"Traumas")
c5.save
c6 = Categorium.new(nome:"Alimentação")
c6.save
c7 = Categorium.new(nome:"Personalidade")
c7.save
c8 = Categorium.new(nome:"Psicótico")
c8.save

################################################################################
#SEED DE TRANSTORNOS E SINTOMAS
#Transtorno Bipolar Tipo 1
d = Transtorno.new(nome:"Transtorno Bipolar Tipo 1",categorium_id: c1.id,min_qtd_sint:8,pagina:"123")
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

d.sintomas_transtorno.create(sintoma: s1)
d.sintomas_transtorno.create(sintoma: s2)
d.sintomas_transtorno.create(sintoma: s3)
d.sintomas_transtorno.create(sintoma: s4)
d.sintomas_transtorno.create(sintoma: s5)
d.sintomas_transtorno.create(sintoma: s6)
d.sintomas_transtorno.create(sintoma: s7)
d.sintomas_transtorno.create(sintoma: s8)
d.sintomas_transtorno.create(sintoma: s9)
d.sintomas_transtorno.create(sintoma: s10)
d.sintomas_transtorno.create(sintoma: s11)
d.sintomas_transtorno.create(sintoma: s12)
d.sintomas_transtorno.create(sintoma: s13)
d.sintomas_transtorno.create(sintoma: s14)
d.sintomas_transtorno.create(sintoma: s15)
d.sintomas_transtorno.create(sintoma: s16)
d.sintomas_transtorno.create(sintoma: s17)
d.sintomas_transtorno.create(sintoma: s18)
d.sintomas_transtorno.create(sintoma: s19)
d.sintomas_transtorno.create(sintoma: s20)
#

#Transtorno Bipolar Tipo 2
d = Transtorno.new(nome:"Transtorno Bipolar Tipo 2",categorium_id: c1.id,min_qtd_sint:8,pagina:"132")
d.save

s21 = Sintoma.new(nome:"O episódio hipomaníaco não é suficientemente grave a ponto de causar prejuízo acentuado no funcionamento social ou profissional ou para necessitar de hospitalização.", sintoma_obrigatorio:true)
s22 = Sintoma.new(nome:"Ao menos um episódio hipomaníaco mesclado com os episódios depressivos maiores", sintoma_obrigatorio:true)
s23 = Sintoma.new(nome:" Jamais houve um episódio maníaco", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s1)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s2)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s3)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s4)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s5)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s6)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s7)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s8)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s10)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s11)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s12)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s13)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s14)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s15)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s16)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s17)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s18)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s21)
d.sintomas_transtorno.create(sintoma: s22)
d.sintomas_transtorno.create(sintoma: s23)
#

#Transtorno Ciclotímico
d = Transtorno.new(nome:"Transtorno Ciclotímico",categorium_id: c1.id,min_qtd_sint:2,pagina:"139")
d.save

s24 = Sintoma.new(nome:"Presença de vários períodos com sintomas hipomaníacos que não satisfazem critério para episódio hipomaníaco e vários períodos com sintomas depressivos que não satisfazem os critérios para episódio depressivo maior", sintoma_obrigatorio:true)
s25 = Sintoma.new(nome:"Os critérios para um episódio depressivo maior, maníaco ou hipomaníaco nunca foram satisfeitos", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s24)
d.sintomas_transtorno.create(sintoma: s25)
#

#Transtorno disruptivo da Desregulação do Humor
d = Transtorno.new(nome:"Transtorno disruptivo da Desregulação do Humor",categorium_id: c2.id,min_qtd_sint:3,pagina:"156")
d.save

s26 = Sintoma.new(nome:"Explosões de raiva recorrentes e graves manifestadas pela linguagem que são consideravelmente desproporcionais em intensidade ou duração à situação ou provocação", sintoma_obrigatorio:true)
s27 = Sintoma.new(nome:"As explosões de raiva são inconsistentes com o nível de desenvolvimento", sintoma_obrigatorio:true)
s28 = Sintoma.new(nome:"O humor entre as explosões de raiva é persistentemente irritável ou zangado", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s26)
d.sintomas_transtorno.create(sintoma: s27)
d.sintomas_transtorno.create(sintoma: s28)
#

#Transtorno Depressivo Maior
d = Transtorno.new(nome:"Transtorno Depressivo Maior",categorium_id: c2.id,min_qtd_sint:5,pagina:"160")
d.save

d.sintomas_transtorno.create(sintoma: s10)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s11)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s12)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s13)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s14)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s15)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s16)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s17)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s18)#Objeto reutilizado do transtorno anterior
#

#Distimia
d = Transtorno.new(nome:"Distimia",categorium_id: c2.id,min_qtd_sint:3,pagina:"168")
d.save


s30 = Sintoma.new(nome:"Apetite diminuído ou alimentação em excesso", sintoma_obrigatorio:false)
s31 = Sintoma.new(nome:"Baixa energia ou fadiga", sintoma_obrigatorio:false)
s32 = Sintoma.new(nome:"Baixa autoestima", sintoma_obrigatorio:false)
s33 = Sintoma.new(nome:"Concentração pobre ou dificuldade em tomar decisões", sintoma_obrigatorio:false)
s34 = Sintoma.new(nome:"Sentimentos de desesperança", sintoma_obrigatorio:false)
s35 = Sintoma.new(nome:"Jamais houve um episódio maníaco ou episódio hipomaníaco e jamais foram satisfeitos os critérios para transtorno ciclotímico", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s10)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s13)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s30)
d.sintomas_transtorno.create(sintoma: s31)
d.sintomas_transtorno.create(sintoma: s32)
d.sintomas_transtorno.create(sintoma: s33)
d.sintomas_transtorno.create(sintoma: s34)
d.sintomas_transtorno.create(sintoma: s35)
#

#Transtorno Disfórico Pré-menstrual
d = Transtorno.new(nome:"Transtorno Disfórico Pré-menstrual",categorium_id: c2.id,min_qtd_sint:5,pagina:"171")
d.save

s36 = Sintoma.new(nome:"Labilidade afetiva acentuada", sintoma_obrigatorio:false)
s37 = Sintoma.new(nome:"Irritabilidade ou raiva acentuada ou aumento nos conflitos interpessoais", sintoma_obrigatorio:false)
s38 = Sintoma.new(nome:"Humor deprimido acentuado, sentimentos de desesperança ou pensamentos autodepreciativos", sintoma_obrigatorio:false)
s39 = Sintoma.new(nome:"Ansiedade acentuada, tensão e/ou sentimentos de estar nervosa ou no limite", sintoma_obrigatorio:false)
s40 = Sintoma.new(nome:"Interesse diminuído pelas atividades habituais", sintoma_obrigatorio:false)
s41 = Sintoma.new(nome:"Dificuldade em se concentrar", sintoma_obrigatorio:false)
s42 = Sintoma.new(nome:"Letargia, fadiga fácil ou falta de energia acentuada", sintoma_obrigatorio:false)
s43 = Sintoma.new(nome:"Alteração acentuada do apetite; comer em demasia; ou avidez por alimentos específicos", sintoma_obrigatorio:false)
s44 = Sintoma.new(nome:"Sentir-se sobrecarregada ou fora de controle", sintoma_obrigatorio:false)
s45 = Sintoma.new(nome:'Sintomas físicos como sensibilidade ou inchaço das mamas, dor articular ou muscular, sensação de "inchaço" ou ganho de peso', sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s13)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s36)
d.sintomas_transtorno.create(sintoma: s37)
d.sintomas_transtorno.create(sintoma: s38)
d.sintomas_transtorno.create(sintoma: s39)
d.sintomas_transtorno.create(sintoma: s40)
d.sintomas_transtorno.create(sintoma: s41)
d.sintomas_transtorno.create(sintoma: s42)
d.sintomas_transtorno.create(sintoma: s43)
d.sintomas_transtorno.create(sintoma: s44)
d.sintomas_transtorno.create(sintoma: s45)
#

#Transtorno de Ansiedade de Separação
d = Transtorno.new(nome:"Transtorno de Ansiedade de Separação",categorium_id: c3.id,min_qtd_sint:3,pagina:"190")
d.save

s46 = Sintoma.new(nome:"Medo ou ansiedade impróprios e excessivos em relação ao estágio do desenvolvimento, envolvendo a separação daqueles com quem o indivíduo tem apego", sintoma_obrigatorio:true)
s47 = Sintoma.new(nome:"Sofrimento excessivo e recorrente ante a ocorrência ou previsão de afastamento de casa ou de figuras importantes de apego", sintoma_obrigatorio:false)
s48 = Sintoma.new(nome:"Preocupação persistente e excessiva acerca da possível perda ou de perigos envolvendo figuras importantes de apego", sintoma_obrigatorio:false)
s49 = Sintoma.new(nome:"Preocupação persistente e excessiva de que um evento indesejado leve à separação de uma figura importante de apego", sintoma_obrigatorio:false)
s50 = Sintoma.new(nome:"Relutância persistente ou recusa a sair, afastar-se de casa, ir para a escola, o trabalho ou a qualquer outro lugar, em virtude do medo da separação", sintoma_obrigatorio:false)
s51 = Sintoma.new(nome:"Temor persistente e excessivo ou relutância em ficar sozinho ou sem as figuras importantes de apego em casa ou em outros contextos", sintoma_obrigatorio:false)
s52 = Sintoma.new(nome:"Relutância ou recusa persistente em dormir longe de casa ou dormir sem estar próximo a uma figura importante de apego", sintoma_obrigatorio:false)
s53 = Sintoma.new(nome:"Pesadelos repetidos envolvendo o tema da speração", sintoma_obrigatorio:false)
s54 = Sintoma.new(nome:"Repetidas queixas de sintomas somáticos quando a separação de figuras importantes de apego ocorre ou é prevista", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s46)
d.sintomas_transtorno.create(sintoma: s47)
d.sintomas_transtorno.create(sintoma: s48)
d.sintomas_transtorno.create(sintoma: s49)
d.sintomas_transtorno.create(sintoma: s50)
d.sintomas_transtorno.create(sintoma: s51)
d.sintomas_transtorno.create(sintoma: s52)
d.sintomas_transtorno.create(sintoma: s53)
d.sintomas_transtorno.create(sintoma: s54)
#

#Mutismo Seletivo
d = Transtorno.new(nome:"Mutismo Seletivo",categorium_id: c3.id,min_qtd_sint:4,pagina:"195")
d.save

s55 = Sintoma.new(nome:"Fracasso persistente em falar em situações sociais específicas nas quais existe a expectativa para tal, apesar de falar em outras situações", sintoma_obrigatorio:true)
s56 = Sintoma.new(nome:"A perturbação interfere na realização educacional ou profissional ou na comunicação social", sintoma_obrigatorio:true)
s57 = Sintoma.new(nome:"O fracasso para falar não se deve a um desconhecimento ou desconforto com o idioma exigido pela situação social", sintoma_obrigatorio:true)
s58 = Sintoma.new(nome:"A perturbação não é mais bem explicada por um transtorno da comunicação", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s55)
d.sintomas_transtorno.create(sintoma: s56)
d.sintomas_transtorno.create(sintoma: s57)
d.sintomas_transtorno.create(sintoma: s58)
#

#Fobia Específica
d = Transtorno.new(nome:"Fobia Específica",categorium_id: c3.id,min_qtd_sint:5,pagina:"197")
d.save

s59 = Sintoma.new(nome:"Medo ou ansiedade acentuados acerca de um objeto ou situação", sintoma_obrigatorio:true)
s60 = Sintoma.new(nome:"O objeto ou situação fóbica quase invariavelmente provoca uma resposta imediata de medo ou ansiedade", sintoma_obrigatorio:true)
s61 = Sintoma.new(nome:"O objeto ou situação fóbica é ativamente evitado ou suportado com intensa ansiedade ou sofrimento", sintoma_obrigatorio:true)
s62 = Sintoma.new(nome:"O medo ou ansiedade é desproporcional em relação ao perigo real imposto pelo objeto ou situação específica e ao contexto sociocultural", sintoma_obrigatorio:true)
s63 = Sintoma.new(nome:"O medo, ansiedade ou esquiva é persistente", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s59)
d.sintomas_transtorno.create(sintoma: s60)
d.sintomas_transtorno.create(sintoma: s61)
d.sintomas_transtorno.create(sintoma: s62)
d.sintomas_transtorno.create(sintoma: s63)
#

#Transtorno de Ansiedade Social (Fobia Social)
d = Transtorno.new(nome:"Transtorno de Ansiedade Social (Fobia Social)",categorium_id: c3.id,min_qtd_sint:5,pagina:"202")
d.save

s64 = Sintoma.new(nome:"Medo ou ansiedade acentuados acerca de uma ou mais situações sociais em que o indivíduo é exposto a possível avaliação por outras pessoas.", sintoma_obrigatorio:true)
s65 = Sintoma.new(nome:"As situações sociais quase sempre provocam medo ou ansiedade", sintoma_obrigatorio:true)
s66 = Sintoma.new(nome:"As situações sociais são evitadas ou suportadas com intenso medo ou ansiedade", sintoma_obrigatorio:true)
s67 = Sintoma.new(nome:"O medo ou ansiedade é desproporcional à ameaça real apresentada pela situação social e o contexto sociocultural", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s63)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s64)
d.sintomas_transtorno.create(sintoma: s65)
d.sintomas_transtorno.create(sintoma: s66)
d.sintomas_transtorno.create(sintoma: s67)
#

#Transtorno de Pânico
d = Transtorno.new(nome:"Transtorno de Pânico",categorium_id: c3.id,min_qtd_sint:4,pagina:"208")
d.save

s68 = Sintoma.new(nome:"Palpitações, coração acelerado, taquicardia", sintoma_obrigatorio:false)
s69 = Sintoma.new(nome:"Sudorese", sintoma_obrigatorio:false)
s70 = Sintoma.new(nome:"Tremores ou abalos", sintoma_obrigatorio:false)
s71 = Sintoma.new(nome:"Sensação de falta de ar ou sufocamento", sintoma_obrigatorio:false)
s72 = Sintoma.new(nome:"Sensação de asfixia", sintoma_obrigatorio:false)
s73 = Sintoma.new(nome:"Dor ou desconforto torácico", sintoma_obrigatorio:false)
s74 = Sintoma.new(nome:"Náusea ou desconforto abdominal", sintoma_obrigatorio:false)
s75 = Sintoma.new(nome:"Sensação de tontura, instabilidade, vertigem ou desmaio", sintoma_obrigatorio:false)
s76 = Sintoma.new(nome:"Calafrios ou ondas de calor", sintoma_obrigatorio:false)
s77 = Sintoma.new(nome:"Parestesias", sintoma_obrigatorio:false)
s78 = Sintoma.new(nome:"Desrealização ou despersonalização", sintoma_obrigatorio:false)
s79 = Sintoma.new(nome:'Medo de perder o controle ou "enlouquecer"', sintoma_obrigatorio:false)
s80 = Sintoma.new(nome:"Medo de morrer", sintoma_obrigatorio:false)
s81 = Sintoma.new(nome:"Apreensão ou preocupação persistente acerca de ataques de pânico adicionais ou sobre suas consequências", sintoma_obrigatorio:true)
s82 = Sintoma.new(nome:"Uma mudança desadaptativa significativa no comportamento relacionada aos ataques", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s68)
d.sintomas_transtorno.create(sintoma: s69)
d.sintomas_transtorno.create(sintoma: s70)
d.sintomas_transtorno.create(sintoma: s71)
d.sintomas_transtorno.create(sintoma: s72)
d.sintomas_transtorno.create(sintoma: s73)
d.sintomas_transtorno.create(sintoma: s74)
d.sintomas_transtorno.create(sintoma: s75)
d.sintomas_transtorno.create(sintoma: s76)
d.sintomas_transtorno.create(sintoma: s77)
d.sintomas_transtorno.create(sintoma: s78)
d.sintomas_transtorno.create(sintoma: s79)
d.sintomas_transtorno.create(sintoma: s80)
d.sintomas_transtorno.create(sintoma: s81)
d.sintomas_transtorno.create(sintoma: s82)
#

#Agorafobia
d = Transtorno.new(nome:"Agorafobia",categorium_id: c3.id,min_qtd_sint:5,pagina:"218")
d.save

s83 = Sintoma.new(nome:"Medo ou ansiedade no uso de transporte público", sintoma_obrigatorio:false)
s84 = Sintoma.new(nome:"Medo ou ansiedade em permanecer em espaços abertos", sintoma_obrigatorio:false)
s85 = Sintoma.new(nome:"Medo ou ansiedade em peermanecer em locais fechados", sintoma_obrigatorio:false)
s86 = Sintoma.new(nome:"Medo ou ansiedade em permanecer em uma fila ou ficar em meio a uma multidão", sintoma_obrigatorio:false)
s87 = Sintoma.new(nome:"Medo ou ansiedade em sair de casa sozinho", sintoma_obrigatorio:false)
s88 = Sintoma.new(nome:"O indivíduo tem medo ou evita essas situações devido a pensamentos de que pode ser difícil escapar ou de que o auxílio pode não estar disponível no caso de desenvolver sintomas do tipo pânico ou outros sintomas incapacitantes ou constrangedores", sintoma_obrigatorio:true)
s89 = Sintoma.new(nome:"As situações agorafóbicas quase sempre provocam medo ou ansiedade", sintoma_obrigatorio:true)
s90 = Sintoma.new(nome:"As situações situações agorafóbicas são ativamente evitadas, requerem a presença de uma companhia ou são suportadas com intenso medo ou ansiedade", sintoma_obrigatorio:true)
s91 = Sintoma.new(nome:"O medo ou ansiedade é desproporcional ao perigo real apresentado pelas situações agorafóbicas e ao contexto sociocultural", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s63)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s83)
d.sintomas_transtorno.create(sintoma: s84)
d.sintomas_transtorno.create(sintoma: s85)
d.sintomas_transtorno.create(sintoma: s86)
d.sintomas_transtorno.create(sintoma: s87)
d.sintomas_transtorno.create(sintoma: s88)
d.sintomas_transtorno.create(sintoma: s89)
d.sintomas_transtorno.create(sintoma: s90)
d.sintomas_transtorno.create(sintoma: s91)
#

#Transtorno de Ansiedade Generalizada
d = Transtorno.new(nome:"Transtorno de Ansiedade Generalizada",categorium_id: c3.id,min_qtd_sint:3,pagina:"222")
d.save

s92 = Sintoma.new(nome:"Ansiedade e preocupação excessivas", sintoma_obrigatorio:true)
s93 = Sintoma.new(nome:"O indivíduo considera difícil controlar a preocupação", sintoma_obrigatorio:true)
s94 = Sintoma.new(nome:"Inquietação ou sensação de estar com os nervos à flor da pele", sintoma_obrigatorio:false)
s95 = Sintoma.new(nome:"Fatigabilidade", sintoma_obrigatorio:false)
s96 = Sintoma.new(nome:'Dificuldade em concentrar-se ou sensações de "branco" na mente"', sintoma_obrigatorio:false)
s97 = Sintoma.new(nome:"Irritabilidade", sintoma_obrigatorio:false)
s98 = Sintoma.new(nome:"Tensão muscular", sintoma_obrigatorio:false)
s99 = Sintoma.new(nome:"Perturbação do sono", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s92)
d.sintomas_transtorno.create(sintoma: s93)
d.sintomas_transtorno.create(sintoma: s94)
d.sintomas_transtorno.create(sintoma: s95)
d.sintomas_transtorno.create(sintoma: s96)
d.sintomas_transtorno.create(sintoma: s97)
d.sintomas_transtorno.create(sintoma: s98)
d.sintomas_transtorno.create(sintoma: s99)
#

#Transtorno Obsessivo-compulsivo
d = Transtorno.new(nome:"Transtorno Obsessivo-compulsivo",categorium_id: c4.id,min_qtd_sint:7,pagina:"237")
d.save

s100 = Sintoma.new(nome:"Presenças de obsessões, compulsões ou ambas", sintoma_obrigatorio:true)
s101 = Sintoma.new(nome:"Pensamentos, impulsos ou imagens recorrentes e persistentes que, em algum momento durante a perturbação, são experenciados como intrusivos e indesejados e que causam acentuada ansiedade ou sofrimento", sintoma_obrigatorio:true)
s102 = Sintoma.new(nome:"O indivíduo tenta ignorar ou suprimir os pensamentos, impulsos ou imagens ou neutralizá-los com algum outro pensamento ou ação", sintoma_obrigatorio:true)
s103 = Sintoma.new(nome:"Comportamentos repetitivos que o indivíduo se sente compelido a executar em resposta a uma obsessão ou de acordo com regras que devem ser rigidamente aplicadas", sintoma_obrigatorio:true)
s104 = Sintoma.new(nome:"Os comportamentos ou os atos mentais visam prevenir ou reduzir a ansiedade ou o sofrimento ou evitar algum evento ou situação temida", sintoma_obrigatorio:true)
s105 = Sintoma.new(nome:"Os comportamentos ou atos mentais não tem uma conexão realista com o que visam neutralizar ou evitar ou são claramente excessivos", sintoma_obrigatorio:true)
s106 = Sintoma.new(nome:"As obsessões ou compulsões tomam tempo ou causam sofrimento", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s100)
d.sintomas_transtorno.create(sintoma: s101)
d.sintomas_transtorno.create(sintoma: s102)
d.sintomas_transtorno.create(sintoma: s103)
d.sintomas_transtorno.create(sintoma: s104)
d.sintomas_transtorno.create(sintoma: s105)
d.sintomas_transtorno.create(sintoma: s106)
#

#Transtorno Dismórfico Corporal
d = Transtorno.new(nome:"Transtorno Dismórfico Corporal",categorium_id: c4.id,min_qtd_sint:2,pagina:"242")
d.save

s107 = Sintoma.new(nome:"Preocupação com um ou mais defeitos ou falhas percebidas na aparência física que não são observáveis ou que parecem leves para os outros", sintoma_obrigatorio:true)
s108 = Sintoma.new(nome:"O indivíduo executou comportamentos repetitivos ou atos mentais em resposta às preocupações com a aparência", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s107)
d.sintomas_transtorno.create(sintoma: s108)
#

#Transtorno de Acumulação
d = Transtorno.new(nome:"Transtorno de Acumulação",categorium_id: c4.id,min_qtd_sint:4,pagina:"247")
d.save

s109 = Sintoma.new(nome:"Dificuldade persistente de descartar ou de se desfazer de pertences, independentemente de seu valor real", sintoma_obrigatorio:true)
s110 = Sintoma.new(nome:"Necessidade percebida de guardar os itens e sofrimento associado ao descartá-los", sintoma_obrigatorio:true)
s111 = Sintoma.new(nome:"A dificuldade de descartar os pertences resulta na acumulação de itens que congestionam e obstruem as áreas em uso e compromete substancialmente o uso pretendido", sintoma_obrigatorio:true)
s112 = Sintoma.new(nome:"Se as áreas de estar não são obstruídas, é somente devido a intervenção de outras pessoas", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s109)
d.sintomas_transtorno.create(sintoma: s110)
d.sintomas_transtorno.create(sintoma: s111)
d.sintomas_transtorno.create(sintoma: s112)
#

#Tricotilomania
d = Transtorno.new(nome:"Tricotilomania",categorium_id: c4.id,min_qtd_sint:2,pagina:"251")
d.save

s113 = Sintoma.new(nome:"Arrancar o próprio cabelo de forma recorrente, resultando em perda de cabelo", sintoma_obrigatorio:true)
s114 = Sintoma.new(nome:"Tentativas repetidas de reduzir ou parar o comportamento de arrancar o cabelo", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s113)
d.sintomas_transtorno.create(sintoma: s114)
#

#Transtorno de Escoriação
d = Transtorno.new(nome:"Transtorno de Escoriação",categorium_id: c4.id,min_qtd_sint:2,pagina:"254")
d.save

s115 = Sintoma.new(nome:"Beliscar a pele de forma recorrente, resultando em lesões", sintoma_obrigatorio:true)
s116 = Sintoma.new(nome:"Tentativas repetidas de reduzir ou parar o comportamento de beliscar a pele", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s115)
d.sintomas_transtorno.create(sintoma: s116)
#

#Transtorno do Apego Reativo
d = Transtorno.new(nome:"Transtorno do Apego Reativo",categorium_id: c5.id,min_qtd_sint:3,pagina:"265")
d.save

s117 = Sintoma.new(nome:"A criança rara ou minimamente busca conforto quando aflita", sintoma_obrigatorio:true)
s118 = Sintoma.new(nome:"A criança rara ou minimamente responde a medidas de conforto quando aflita", sintoma_obrigatorio:true)
s119 = Sintoma.new(nome:"Resposividade social e emocional mínima a outras pessoas", sintoma_obrigatorio:false)
s120 = Sintoma.new(nome:"Afeto positivo limitado", sintoma_obrigatorio:false)
s121 = Sintoma.new(nome:"Episódios de irritabilidade, tristeza ou temor inexplicados, evidentes até mesmo durante interações não ameaçadoras com cuidadores adultos", sintoma_obrigatorio:false)
s122 = Sintoma.new(nome:"A criança vivenciou um padrão de extremos de cuidado insuficiente", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s117)
d.sintomas_transtorno.create(sintoma: s118)
d.sintomas_transtorno.create(sintoma: s119)
d.sintomas_transtorno.create(sintoma: s120)
d.sintomas_transtorno.create(sintoma: s121)
d.sintomas_transtorno.create(sintoma: s122)
#

#Transtorno de Interação Social Desinibida
d = Transtorno.new(nome:"Transtorno de Interação Social Desinibida",categorium_id: c5.id,min_qtd_sint:2,pagina:"268")
d.save

s123 = Sintoma.new(nome:"Discrição reduzida ou ausente em abordar e interagir com adultos desconhecidos", sintoma_obrigatorio:false)
s124 = Sintoma.new(nome:"Comportamento verbal ou físico excessivamente familiar", sintoma_obrigatorio:false)
s125 = Sintoma.new(nome:"Diminuição ou ausência de retorno ao cuidados adulto depois de aventurar-se, mesmo em contextos não familiares", sintoma_obrigatorio:false)
s126 = Sintoma.new(nome:"Vontade de sair com um adulto estranho com mínima ou nenhuma hesitação", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s122)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s123)
d.sintomas_transtorno.create(sintoma: s124)
d.sintomas_transtorno.create(sintoma: s125)
d.sintomas_transtorno.create(sintoma: s126)
#

#Transtorno de Estresse Pós-traumático
d = Transtorno.new(nome:"Transtorno de Estresse Pós-traumático",categorium_id: c5.id,min_qtd_sint:6,pagina:"271")
d.save

s127 = Sintoma.new(nome:"Exposição a episódio concreto ou ameaça de morte, lesão grave ou violência sexual", sintoma_obrigatorio:true)
s128 = Sintoma.new(nome:"Lembranças intrusivas angustiantes, recorrentes e involuntárias do evento traumático", sintoma_obrigatorio:false)
s129 = Sintoma.new(nome:"Sonhos angustiantes recorrentes nos quais o conteúdo e/ou sentimento do sonho estão relacionados ao evento traumático", sintoma_obrigatorio:false)
s130 = Sintoma.new(nome:"Reações dissociativas nas quais o indivíduo sente ou age como se o evento traumático estivesse ocorrendo novamente", sintoma_obrigatorio:false)
s131 = Sintoma.new(nome:"Sofrimento psicológico intenso ou prolongado ante a exposição a sinais internos ou externos que simbolizem ou se assemelhem a algum aspecto do evento traumático", sintoma_obrigatorio:false)
s132 = Sintoma.new(nome:"Reações fisiológicas intensas a sinais internos ou externos que simbolizem ou se assemelhem a algum aspecto do evento traumático", sintoma_obrigatorio:false)
s133 = Sintoma.new(nome:"Evitação ou esforço para evitar recordações, pensamentos ou sentimentos angustiantes acerca de ou associados de perto ao evento traumático", sintoma_obrigatorio:false)
s134 = Sintoma.new(nome:"Evitação ou esforço para evitar lembranças externas que despertem recordações, pensamentos ou sentimentos angustiantes acerca de ou associados de perto ao evento traumático", sintoma_obrigatorio:false)
s135 = Sintoma.new(nome:"Incapacidade de recordar algum aspecto importante do evento traumático", sintoma_obrigatorio:false)
s136 = Sintoma.new(nome:"Crenças ou expectativas negativas persistentes e exageradas a respeito de si mesmo, dos outros e do mundo", sintoma_obrigatorio:false)
s137 = Sintoma.new(nome:"Cognições distorcidas persistentes a respeito da causa ou das consequências do evento traumático que levam o indivíduo a culpar a si mesmo ou os outros", sintoma_obrigatorio:false)
s138 = Sintoma.new(nome:"Estado emocional negativo persistente", sintoma_obrigatorio:false)
s139 = Sintoma.new(nome:"Interesse ou participação bastante diminuída em atividades significativas", sintoma_obrigatorio:false)
s140 = Sintoma.new(nome:"Sentimento de distanciamento e alienação em relação aos outros", sintoma_obrigatorio:false)
s141 = Sintoma.new(nome:"Incapacidade persistente de sentir emoções positivas", sintoma_obrigatorio:false)
s142 = Sintoma.new(nome:"Comportamento irritadiço e surtos de raiva, geralmente expressoes sob a forma de agressão verbal ou física em relação a pessoas e objetos", sintoma_obrigatorio:false)
s143 = Sintoma.new(nome:"Comportamento imprudente ou autodestrutivo", sintoma_obrigatorio:false)
s144 = Sintoma.new(nome:"Hipervigilância", sintoma_obrigatorio:false)
s145 = Sintoma.new(nome:"Resposta de sobressalto exagerada", sintoma_obrigatorio:false)
s146 = Sintoma.new(nome:"Problemas de concentração", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s99)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s127)
d.sintomas_transtorno.create(sintoma: s128)
d.sintomas_transtorno.create(sintoma: s129)
d.sintomas_transtorno.create(sintoma: s130)
d.sintomas_transtorno.create(sintoma: s131)
d.sintomas_transtorno.create(sintoma: s132)
d.sintomas_transtorno.create(sintoma: s133)
d.sintomas_transtorno.create(sintoma: s134)
d.sintomas_transtorno.create(sintoma: s135)
d.sintomas_transtorno.create(sintoma: s136)
d.sintomas_transtorno.create(sintoma: s137)
d.sintomas_transtorno.create(sintoma: s138)
d.sintomas_transtorno.create(sintoma: s139)
d.sintomas_transtorno.create(sintoma: s140)
d.sintomas_transtorno.create(sintoma: s141)
d.sintomas_transtorno.create(sintoma: s142)
d.sintomas_transtorno.create(sintoma: s143)
d.sintomas_transtorno.create(sintoma: s144)
d.sintomas_transtorno.create(sintoma: s145)
d.sintomas_transtorno.create(sintoma: s146)
#

#Transtorno de Estresse Agudo
d = Transtorno.new(nome:"Transtorno de Estresse Agudo",categorium_id: c5.id,min_qtd_sint:9,pagina:"280")
d.save

s147 = Sintoma.new(nome:"Senso de realidade alterado acerca de si mesmo ou do ambiente ao redor", sintoma_obrigatorio:false)
s148 = Sintoma.new(nome:"Esforços para evitar recordações, pensamentos ou sentimentos angustiantes acerca do ou fortemente relacionados ao evento traumático", sintoma_obrigatorio:false)
s149 = Sintoma.new(nome:"Esforços para evitar lembranças que despertem recordações, pensamentos ou sentimentos angustiantes acerca do ou fortemente relacionados ao evento traumatizante", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s99)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s127)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s128)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s129)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s130)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s131)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s135)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s141)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s142)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s144)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s145)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s146)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s147)
d.sintomas_transtorno.create(sintoma: s148)
d.sintomas_transtorno.create(sintoma: s149)
#

#Transtornos de Adaptação
d = Transtorno.new(nome:"Transtornos de Adaptação",categorium_id: c5.id,min_qtd_sint:1,pagina:"287")
d.save

s150 = Sintoma.new(nome:"Desenvolvimento de sintomas emocionais ou comportamentos em resposta a um estressor ou estressores", sintoma_obrigatorio:true)
s151 = Sintoma.new(nome:"Sofrimento intenso desproporcional à gravidade ou à intensidade do estressor", sintoma_obrigatorio:false)
s152 = Sintoma.new(nome:"Prejuízo significativo no funcionamento social, profissional ou em outras áreas importantes da vida do indivíduo", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s150)
d.sintomas_transtorno.create(sintoma: s151)
d.sintomas_transtorno.create(sintoma: s152)
#

#Pica
d = Transtorno.new(nome:"Pica",categorium_id: c6.id,min_qtd_sint:3,pagina:"329")
d.save

s153 = Sintoma.new(nome:"Ingestão persistente de substâncias não nutritivas, não alimentares", sintoma_obrigatorio:true)
s154 = Sintoma.new(nome:"A ingestão de substância não nutritiva, não alimentar, é inapropriada ao estágio do desenvolvimento", sintoma_obrigatorio:true)
s155 = Sintoma.new(nome:"O comportamento alimentar não faz parte de uma prática culturalmente aceita", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s153)
d.sintomas_transtorno.create(sintoma: s154)
d.sintomas_transtorno.create(sintoma: s155)
#

#Transtorno de Ruminação
d = Transtorno.new(nome:"Transtorno de Ruminação",categorium_id: c6.id,min_qtd_sint:1,pagina:"332")
d.save

s156 = Sintoma.new(nome:"Regurgitação repetida de alimento. O alimento regurgitado pode ser remastigado, novamente deglutido ou cuspido", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s156)
#

#Transtorno Alimentar Restritivo/Evitativo
d = Transtorno.new(nome:"Transtorno Alimentar Restritivo/Evitativo",categorium_id: c6.id,min_qtd_sint:1,pagina:"334")
d.save

s157 = Sintoma.new(nome:"Perturbação alimentar manifestada por fracasso persistente em satisfazer as necessidades nutricionais e/ou energéticas apropriadas", sintoma_obrigatorio:true)
s158 = Sintoma.new(nome:"Perda de peso significativa", sintoma_obrigatorio:false)
s159 = Sintoma.new(nome:"Deficiência nutricional significativa", sintoma_obrigatorio:false)
s160 = Sintoma.new(nome:"Dependência de alimentação enteral ou suplementos nutricionais orais", sintoma_obrigatorio:false)
s161 = Sintoma.new(nome:"Interferência marcante no funcionamento psicossocial", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s157)
d.sintomas_transtorno.create(sintoma: s158)
d.sintomas_transtorno.create(sintoma: s159)
d.sintomas_transtorno.create(sintoma: s160)
d.sintomas_transtorno.create(sintoma: s161)
#

#Anorexia Nervosa
d = Transtorno.new(nome:"Anorexia Nervosa",categorium_id: c6.id,min_qtd_sint:3,pagina:"338")
d.save

s162 = Sintoma.new(nome:"Restrição da ingestão calórica em relação às necessidades, levando a um peso corporal significativamente baixo", sintoma_obrigatorio:true)
s163 = Sintoma.new(nome:"Medo intenso de ganhar peso ou engordar, ou comportamento persistente que interfere no ganho de peso, mesmo estando com peso significativamente baixo", sintoma_obrigatorio:true)
s164 = Sintoma.new(nome:"Perturbação no modo como o próprio peso ou a forma corporal são vivenciados, indluência indevida do peso ou da forma corporal na autoavaliação ou ausência persistente de reconhecimento da gravidade do baixo peso corporal", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s162)
d.sintomas_transtorno.create(sintoma: s163)
d.sintomas_transtorno.create(sintoma: s164)
#

#Bulimia Nervosa
d = Transtorno.new(nome:"Bulimia Nervosa",categorium_id: c6.id,min_qtd_sint:5,pagina:"345")
d.save

s165 = Sintoma.new(nome:"Episódios recorrentes de compulsão alimentar", sintoma_obrigatorio:true)
s166 = Sintoma.new(nome:"Ingestão, em um período de tempo determinado, de uma quantidade de alimento definitivamente maior do que a maioria dos indivíduos consumiria no mesmo período sob circunstâncias semelhantes", sintoma_obrigatorio:true)
s167 = Sintoma.new(nome:"Sensação de falta de controle sobre a ingrestão durante o episódio", sintoma_obrigatorio:true)
s168 = Sintoma.new(nome:"Comportamentos compensatórios inapropriados recorrentes a fim de impedir o ganho de peso, como vômitos autoinduzidos; uso de laxantes, diuréticos ou outros medicamentos; jejum; exercício em excesso", sintoma_obrigatorio:true)
s169 = Sintoma.new(nome:"A autoavaliação é indevidamente influenciada pela forma e pelo peso corporais", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s165)
d.sintomas_transtorno.create(sintoma: s166)
d.sintomas_transtorno.create(sintoma: s167)
d.sintomas_transtorno.create(sintoma: s168)
d.sintomas_transtorno.create(sintoma: s169)
#

#Transtorno de Compulsão Alimentar
d = Transtorno.new(nome:"Transtorno de Compulsão Alimentar",categorium_id: c6.id,min_qtd_sint:4,pagina:"350")
d.save

s170 = Sintoma.new(nome:"Comer mais rapidamente do que o normal", sintoma_obrigatorio:false)
s171 = Sintoma.new(nome:"Comer até se sentir desconfortavelmente cheio", sintoma_obrigatorio:false)
s172 = Sintoma.new(nome:"Comer grandes quantidades de alimento na ausência da sensação física de fome", sintoma_obrigatorio:false)
s173 = Sintoma.new(nome:"Comer sozinho por vergonha do quanto se está comendo", sintoma_obrigatorio:false)
s174 = Sintoma.new(nome:"Sentir-se desgostoso de si mesmo, deprimido ou muito culpado em seguida", sintoma_obrigatorio:false)
s175 = Sintoma.new(nome:"Sofrimento marcante em função da compulsão alimentar", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s165)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s166)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s167)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s170)
d.sintomas_transtorno.create(sintoma: s171)
d.sintomas_transtorno.create(sintoma: s172)
d.sintomas_transtorno.create(sintoma: s173)
d.sintomas_transtorno.create(sintoma: s174)
d.sintomas_transtorno.create(sintoma: s175)
#

#Transtorno da Personalidade Paranoide
d = Transtorno.new(nome:"Transtorno da Personalidade Paranoide",categorium_id: c7.id,min_qtd_sint:4,pagina:"649")
d.save

s176 = Sintoma.new(nome:"Suspeita, sem embasamento suficiente, de estar sendo explorado, maltratado ou enganado por outros", sintoma_obrigatorio:false)
s177 = Sintoma.new(nome:"Preocupa-se com dúvidas injustificadas acerca da lealdade ou da confiabilidade de amigos e sócios", sintoma_obrigatorio:false)
s178 = Sintoma.new(nome:"Reluta em confiar nos outros devido a medo infundado de que as informações serão usadas maldosamente contra si", sintoma_obrigatorio:false)
s179 = Sintoma.new(nome:"Percebe significados ocultos humilhantes ou ameaçadores em comentários ou eventos beenignos", sintoma_obrigatorio:false)
s180 = Sintoma.new(nome:"Guarda rancores de forma persistente", sintoma_obrigatorio:false)
s181 = Sintoma.new(nome:"Percebe ataques a ser caráter de reputação que não são percebidos pelos outros e reage com raiva ou contra-ataca rapidamente", sintoma_obrigatorio:false)
s182 = Sintoma.new(nome:"Tem suspeitas recorrentes e injustificadas acerca da fidelidade do cônjuge ou parceiro sexual", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s176)
d.sintomas_transtorno.create(sintoma: s177)
d.sintomas_transtorno.create(sintoma: s178)
d.sintomas_transtorno.create(sintoma: s179)
d.sintomas_transtorno.create(sintoma: s180)
d.sintomas_transtorno.create(sintoma: s181)
d.sintomas_transtorno.create(sintoma: s182)
#

#Transtorno da Personalidade Esquizóide
d = Transtorno.new(nome:"Transtorno da Personalidade Esquizóide",categorium_id: c7.id,min_qtd_sint:4,pagina:"652")
d.save

s183 = Sintoma.new(nome:"Não deseja nem desfruta de relações íntimas, inclusive ser parte de uma família", sintoma_obrigatorio:false)
s184 = Sintoma.new(nome:"Quase sempre opta por atividades solitárias", sintoma_obrigatorio:false)
s185 = Sintoma.new(nome:"Manifesta pouco ou nenhum interesse em ter experiências sexuais com outra pessoa", sintoma_obrigatorio:false)
s186 = Sintoma.new(nome:"Tem prazer em poucas atividades, por vezes nenhuma", sintoma_obrigatorio:false)
s187 = Sintoma.new(nome:"Não tem amigos próximos ou confidentes que não sejam os familiares de primeiro grau", sintoma_obrigatorio:false)
s188 = Sintoma.new(nome:"Mostra-se indiferente ao elogio ou à crítica de outros", sintoma_obrigatorio:false)
s189 = Sintoma.new(nome:"Demonstra frieza emocional, distanciamento ou embotamento afetivo", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s183)
d.sintomas_transtorno.create(sintoma: s184)
d.sintomas_transtorno.create(sintoma: s185)
d.sintomas_transtorno.create(sintoma: s186)
d.sintomas_transtorno.create(sintoma: s187)
d.sintomas_transtorno.create(sintoma: s188)
d.sintomas_transtorno.create(sintoma: s189)
#

#Transtorno de Personalidade Esquizotípica
d = Transtorno.new(nome:"Transtorno de Personalidade Esquizotípica",categorium_id: c7.id,min_qtd_sint:5,pagina:"655")
d.save

s190 = Sintoma.new(nome:"Ideias de referência", sintoma_obrigatorio:false)
s191 = Sintoma.new(nome:"Crenças estranhas ou pensamento mágico que influenciam o comportamento e são inconsistentes com as normas subculturais", sintoma_obrigatorio:false)
s192 = Sintoma.new(nome:"Experiências perceptivas incomuns, incluindo ilusões corporais", sintoma_obrigatorio:false)
s193 = Sintoma.new(nome:"Pensamento e discurso estranhos", sintoma_obrigatorio:false)
s194 = Sintoma.new(nome:"Desconfiança ou ideação paranoide", sintoma_obrigatorio:false)
s195 = Sintoma.new(nome:"Afeto inadequado ou constrito", sintoma_obrigatorio:false)
s196 = Sintoma.new(nome:"Comportamento ou aparência estranha, excêntrica ou peculiar", sintoma_obrigatorio:false)
s197 = Sintoma.new(nome:"Ausência de amigos próximos ou confidentes que não sejam parentes de primeiro grau", sintoma_obrigatorio:false)
s198 = Sintoma.new(nome:"Ansiedade social excessiva que não diminui com o convívio e que tense a estar associada mais a temores paranoides do que a julgamentos negativos sobre si mesmo", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s190)
d.sintomas_transtorno.create(sintoma: s191)
d.sintomas_transtorno.create(sintoma: s192)
d.sintomas_transtorno.create(sintoma: s193)
d.sintomas_transtorno.create(sintoma: s194)
d.sintomas_transtorno.create(sintoma: s195)
d.sintomas_transtorno.create(sintoma: s196)
d.sintomas_transtorno.create(sintoma: s197)
d.sintomas_transtorno.create(sintoma: s198)
#

#Transtorno da Personalidade Antissocial
d = Transtorno.new(nome:"Transtorno da Personalidade Antissocial",categorium_id: c7.id,min_qtd_sint:3,pagina:"659")
d.save

s199 = Sintoma.new(nome:"Fracasso em ajustar-se às normas sociais relativas a comportamentos legais, conforme indicado pela repetição de atos que constituem motivos de detenção", sintoma_obrigatorio:false)
s200 = Sintoma.new(nome:"Tendência à falsidade, conforme indicado por mentiras repetidas, uso de nomes falsos ou de trapaça para ganho ou prazer pessoal", sintoma_obrigatorio:false)
s201 = Sintoma.new(nome:"Impulsividade ou fracasso em fazer planos para o futuro", sintoma_obrigatorio:false)
s202 = Sintoma.new(nome:"Irritabilidade e agressividade, conforme indicado por repetidas lutas corporais ou agressões físicas", sintoma_obrigatorio:false)
s203 = Sintoma.new(nome:"Descaso pela segurança de si ou de outros", sintoma_obrigatorio:false)
s204 = Sintoma.new(nome:"Irresponsabilidade reiterada, conforme indicação por falha repetida em manter uma conduta consistente no trabalho ou honrar obrigações financeiras", sintoma_obrigatorio:false)
s205 = Sintoma.new(nome:"Ausência de remorso, conforme indicado pela indiferença ou rancionalização em relação a ter ferido, maltratado ou roubado outras pessoas", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s199)
d.sintomas_transtorno.create(sintoma: s200)
d.sintomas_transtorno.create(sintoma: s201)
d.sintomas_transtorno.create(sintoma: s202)
d.sintomas_transtorno.create(sintoma: s203)
d.sintomas_transtorno.create(sintoma: s204)
d.sintomas_transtorno.create(sintoma: s205)
#

#Transtorno da Personalidade Borderline
d = Transtorno.new(nome:"Transtorno da Personalidade Borderline",categorium_id: c7.id,min_qtd_sint:5,pagina:"663")
d.save

s206 = Sintoma.new(nome:"Esforços desesperados para evitar abandono real ou imaginado", sintoma_obrigatorio:false)
s207 = Sintoma.new(nome:"Um padrão de relacionamentos interpessoais instáveis e intensos caracterizado pela alternância entre extremos de idealização e desvalorização", sintoma_obrigatorio:false)
s208 = Sintoma.new(nome:"Perturbação da identidade: instabilidade acentuada e persistente da autoimagem ou da percepção de si mesmo", sintoma_obrigatorio:false)
s209 = Sintoma.new(nome:"Impulsidade em pelo menos duas áreas potencialmente autodestrutivas", sintoma_obrigatorio:false)
s210 = Sintoma.new(nome:"Recorrência de comportamento, gestos ou ameaças suicidas ou de comportamento automutilante", sintoma_obrigatorio:false)
s211 = Sintoma.new(nome:"Instabilidade afetiva devido a uma acentuada reatividade de humor", sintoma_obrigatorio:false)
s212 = Sintoma.new(nome:"Sentimentos crônicos de vazio", sintoma_obrigatorio:false)
s213 = Sintoma.new(nome:"Raiva intensa e inapropriada ou dificuldade em controlá-la", sintoma_obrigatorio:false)
s214 = Sintoma.new(nome:"Ideação paranoide transitória associada a estresse ou sintomas dissociativos intensos", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s206)
d.sintomas_transtorno.create(sintoma: s207)
d.sintomas_transtorno.create(sintoma: s208)
d.sintomas_transtorno.create(sintoma: s209)
d.sintomas_transtorno.create(sintoma: s210)
d.sintomas_transtorno.create(sintoma: s211)
d.sintomas_transtorno.create(sintoma: s212)
d.sintomas_transtorno.create(sintoma: s213)
d.sintomas_transtorno.create(sintoma: s214)
#

#Transtorno da Personalidade Histriônica
d = Transtorno.new(nome:"Transtorno da Personalidade Histriônica",categorium_id: c7.id,min_qtd_sint:5,pagina:"667")
d.save

s215 = Sintoma.new(nome:"Desconforto em situações em que não é o centro das atenções", sintoma_obrigatorio:false)
s216 = Sintoma.new(nome:"A interação com os outros é fequentemente caracterizada por comportamentos sexualmente sedutor inadequado ou provocativo", sintoma_obrigatorio:false)
s217 = Sintoma.new(nome:"Exibe mudanças rápidas e expressão superficial das emoções", sintoma_obrigatorio:false)
s218 = Sintoma.new(nome:"Usa reiteradamente a aparência física para atrair a atenção para si", sintoma_obrigatorio:false)
s219 = Sintoma.new(nome:"Tem um estilo de discurso que é excessivamente impressionista e carente de detalhes", sintoma_obrigatorio:false)
s220 = Sintoma.new(nome:"Mostra autodramatização, teatralidade e expressão exagerada das emoções", sintoma_obrigatorio:false)
s221 = Sintoma.new(nome:"É sugestionável", sintoma_obrigatorio:false)
s222 = Sintoma.new(nome:"Considera as relações pessoais mais íntimas do que na realidade são", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s215)
d.sintomas_transtorno.create(sintoma: s216)
d.sintomas_transtorno.create(sintoma: s217)
d.sintomas_transtorno.create(sintoma: s218)
d.sintomas_transtorno.create(sintoma: s219)
d.sintomas_transtorno.create(sintoma: s220)
d.sintomas_transtorno.create(sintoma: s221)
d.sintomas_transtorno.create(sintoma: s222)
#

#Transtorno da Personalidade Narcisista
d = Transtorno.new(nome:"Transtorno da Personalidade Narcisista",categorium_id: c7.id,min_qtd_sint:5,pagina:"669")
d.save

s223 = Sintoma.new(nome:"Tem uma sensação grandiosa da própria importância", sintoma_obrigatorio:false)
s224 = Sintoma.new(nome:"É preocupado com fantasias de sucesso ilimitado, poder, brilho, beleza ou amor ideal", sintoma_obrigatorio:false)
s225 = Sintoma.new(nome:'Acredita ser "especial" e único e que pode ser somente compreendido por, ou associado a, outras pessoas (ou instituições) especiais ou com condição elevada', sintoma_obrigatorio:false)
s226 = Sintoma.new(nome:"Demanda admiração excessiva", sintoma_obrigatorio:false)
s227 = Sintoma.new(nome:"Apresenta um sentimento de possuir direitos", sintoma_obrigatorio:false)
s228 = Sintoma.new(nome:"É explorador em relações interpessoais", sintoma_obrigatorio:false)
s229 = Sintoma.new(nome:"Carece de empatia: reluta em reconhcer ou identificar-se com os sentimentos e as necessidades dos outros", sintoma_obrigatorio:false)
s230 = Sintoma.new(nome:"É frequentemente invejoso em relação aos outros ou acredita que os outros o invejam", sintoma_obrigatorio:false)
s231 = Sintoma.new(nome:"Demonstra comportamentos ou atitudes arrogantes e insolentes", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s223)
d.sintomas_transtorno.create(sintoma: s224)
d.sintomas_transtorno.create(sintoma: s225)
d.sintomas_transtorno.create(sintoma: s226)
d.sintomas_transtorno.create(sintoma: s227)
d.sintomas_transtorno.create(sintoma: s228)
d.sintomas_transtorno.create(sintoma: s229)
d.sintomas_transtorno.create(sintoma: s230)
d.sintomas_transtorno.create(sintoma: s231)
#

#Transtorno da Personalidade Evitativa
d = Transtorno.new(nome:"Transtorno da Personalidade Evitativa",categorium_id: c7.id,min_qtd_sint:4,pagina:"672")
d.save

s232 = Sintoma.new(nome:"Evita atividades profissionais que envolvam contato interpessoal significativo por medo de crítica, desaprovação ou rejeição", sintoma_obrigatorio:false)
s233 = Sintoma.new(nome:"Não se dispõe a envolver-se com pessoas, a menos que tenha certeza de que será recebido de forma positiva", sintoma_obrigatorio:false)
s234 = Sintoma.new(nome:"Mostra-se reservado em relacionamentos íntimos devido a medo de passar vergonha ou de ser ridicularizado", sintoma_obrigatorio:false)
s235 = Sintoma.new(nome:"Preocupa-se com críticas ou rejeição em situações sociais", sintoma_obrigatorio:false)
s236 = Sintoma.new(nome:"Inibe-se em situações interpessoais novas em razão de sentimentos de inadequação", sintoma_obrigatorio:false)
s237 = Sintoma.new(nome:"Vê a si mesmo como socialmente incapaz, sem atrativos pessoais ou inferior aos outros", sintoma_obrigatorio:false)
s238 = Sintoma.new(nome:"Reluta de forma incomum em assumir riscos pessoais ou se envolver em quaisquer novas atividades, pois estas podem ser constangedoras", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s232)
d.sintomas_transtorno.create(sintoma: s233)
d.sintomas_transtorno.create(sintoma: s234)
d.sintomas_transtorno.create(sintoma: s235)
d.sintomas_transtorno.create(sintoma: s236)
d.sintomas_transtorno.create(sintoma: s237)
d.sintomas_transtorno.create(sintoma: s238)
#

#Transtorno da Personalidade Dependente
d = Transtorno.new(nome:"Transtorno da Personalidade Dependente",categorium_id: c7.id,min_qtd_sint:5,pagina:"675")
d.save

s239 = Sintoma.new(nome:"Tem dificuldades em tomar decisões cotidianas sem uma quantidade excessiva de conselhos e reasseguramento de outros", sintoma_obrigatorio:false)
s240 = Sintoma.new(nome:"Precisa que outros assumam responsabilidade pela maior parte das principais áreas de sua vida", sintoma_obrigatorio:false)
s241 = Sintoma.new(nome:"Tem dificuldade em manifestar desacordo com outros devido a medo de perder apoio ou aprovação", sintoma_obrigatorio:false)
s242 = Sintoma.new(nome:"Apresenta dificuldade em iniciar projetos ou fazer coisas por conta própria", sintoma_obrigatorio:false)
s243 = Sintoma.new(nome:"Vai a extremos para obter carinho e apoio de outros, a ponto de voluntariar-se para fazer coisas deasgradáveis", sintoma_obrigatorio:false)
s244 = Sintoma.new(nome:"Sente-se desconfortável ou desamparado quando sozinho devido a temores exagerados de ser incapaz de cuidar de si mesmo", sintoma_obrigatorio:false)
s245 = Sintoma.new(nome:"Busca com urgência outro relacionamento como fonte de cuidado e amparo logo após o término de um relacionamento íntimo", sintoma_obrigatorio:false)
s246 = Sintoma.new(nome:"Tem preocupações irreais com medos de ser abandonado à própria sorte", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s239)
d.sintomas_transtorno.create(sintoma: s240)
d.sintomas_transtorno.create(sintoma: s241)
d.sintomas_transtorno.create(sintoma: s242)
d.sintomas_transtorno.create(sintoma: s243)
d.sintomas_transtorno.create(sintoma: s244)
d.sintomas_transtorno.create(sintoma: s245)
d.sintomas_transtorno.create(sintoma: s246)
#

#Transtorno da Personalidade Obsessivo-compulsivo
d = Transtorno.new(nome:"Transtorno da Personalidade Obsessivo-compulsivo",categorium_id: c7.id,min_qtd_sint:4,pagina:"678")
d.save

s247 = Sintoma.new(nome:"É tão preocupado com detalhes, regras, listas, ordem, organização ou horários a ponto de o objetivo principal da atividade ser perdido", sintoma_obrigatorio:false)
s248 = Sintoma.new(nome:"Demonstra perfeccionismo que interfere na conclusão de tarefas", sintoma_obrigatorio:false)
s249 = Sintoma.new(nome:"É excessivamente dedicado ao trabalho e à produtividade em detrimento de atividade de lazer e amizades", sintoma_obrigatorio:false)
s250 = Sintoma.new(nome:"É excessivamente consciencioso, escrupuloso e inflexível quanto a assuntos de moralidade, ética ou valores", sintoma_obrigatorio:false)
s251 = Sintoma.new(nome:"É incapaz de descartar objetos usados ou sem valor mesmo quando não tem valor sentimental", sintoma_obrigatorio:false)
s252 = Sintoma.new(nome:"Reluta em delegar tarefas ou trabalhar com outras pessoas a menos que elas se submetam a sua forma exata de fazer as coisas", sintoma_obrigatorio:false)
s253 = Sintoma.new(nome:"Adota um estilo miserável de gastos em relação a si e a outros; o dinheiro é visto como algo a ser acumulado para futuras catástrofes", sintoma_obrigatorio:false)
s254 = Sintoma.new(nome:"Exibe rigidez e teimosia", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s247)
d.sintomas_transtorno.create(sintoma: s248)
d.sintomas_transtorno.create(sintoma: s249)
d.sintomas_transtorno.create(sintoma: s250)
d.sintomas_transtorno.create(sintoma: s251)
d.sintomas_transtorno.create(sintoma: s252)
d.sintomas_transtorno.create(sintoma: s253)
d.sintomas_transtorno.create(sintoma: s254)
#

#Transtorno Delirante
d = Transtorno.new(nome:"Transtorno Delirante",categorium_id: c8.id,min_qtd_sint:2,pagina:"90")
d.save

s255 = Sintoma.new(nome:"Presença de um delírio (ou mais)", sintoma_obrigatorio:true)
s256 = Sintoma.new(nome:"O funcionamento não está acentuadamente prejudicado, e o comportamento não é claramente bizarro ou esquisito", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s255)
d.sintomas_transtorno.create(sintoma: s256)
#

#Transtorno Esquizofreniforme
d = Transtorno.new(nome:"Transtorno Esquizofreniforme",categorium_id: c8.id,min_qtd_sint:2,pagina:"96")
d.save

s257 = Sintoma.new(nome:"Delírios", sintoma_obrigatorio:false)
s258 = Sintoma.new(nome:"Alucinações", sintoma_obrigatorio:false)
s259 = Sintoma.new(nome:"Discurso desorganizado", sintoma_obrigatorio:false)
s260 = Sintoma.new(nome:"Comportamento grosseiramente desorganizado ou catatônico", sintoma_obrigatorio:false)
s261 = Sintoma.new(nome:"Sintomas negativos", sintoma_obrigatorio:false)

d.sintomas_transtorno.create(sintoma: s257)
d.sintomas_transtorno.create(sintoma: s258)
d.sintomas_transtorno.create(sintoma: s259)
d.sintomas_transtorno.create(sintoma: s260)
d.sintomas_transtorno.create(sintoma: s261)
#

#Esquizofrenia
d = Transtorno.new(nome:"Esquizofrenia",categorium_id: c8.id,min_qtd_sint:2,pagina:"99")
d.save

s262 = Sintoma.new(nome:"O nível de funcionamento em uma ou mais áreas importantes do funcionamento, como trabalho, relações interpressoais ou autocuidado, está acentuadamente abaixo do nível alcançado antes da perturbação", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s257)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s258)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s259)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s260)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s261)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s262)
#

#Transtorno Esquizoafetivo
d = Transtorno.new(nome:"Transtorno Esquizoafetivo",categorium_id: c8.id,min_qtd_sint:2,pagina:"105")
d.save

s263 = Sintoma.new(nome:"Período ininterrupto da doença onde há um episódio depressivo maior ou maníaco concomitante", sintoma_obrigatorio:true)

d.sintomas_transtorno.create(sintoma: s257)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s258)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s259)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s260)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s261)#Objeto reutilizado do transtorno anterior
d.sintomas_transtorno.create(sintoma: s263)

#
#
#SEED PARA CADA TRANSTORNO TER 1 PESQUISA INICIALMENTE
transtornos = Transtorno.all
transtornos.each do |transtorno|
  #TranstornosPesquisado (só dar um new sempre e associar)
  t = TranstornosPesquisado.new
  t.save
  transtorno.transtorno_pesquisado_transtorno.create(transtornos_pesquisado: t)
  #TranstornoPesquisadoTranstorno (tabela de união)
end




#Para buscas essa associação d.sintomas_transtorno.map

#Associando Sintomas ja cadastrados com transtornos novas
#(TA BUGADO)
#s = Sintoma.where(id:1)
#s2 = Sintoma.where(id:2)
#d = Transtorno.new(nome:"Transtorno 2",min_qtd_sint:2,pagina:"394")
#d.save
#d.sintomas_transtorno.create(sintoma: s)
