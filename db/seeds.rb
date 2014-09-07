# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Usuario.create(
	nome: "Gráfica", 
	matricula: 12345, 
	diretoria: "", 
	senha: 1234, 
	tipo: "grafica"
)

Usuario.create(
	nome: "Francisco dos Santos", 
	matricula: 2013101, 
	diretoria: "DIATINF", 
	senha: 1234, 
	tipo: "diretor"
)

Usuario.create(
	nome: "Antonio Carlos", 
	matricula: 2013202, 
	diretoria: "DIACON", 
	senha: 1234, 
	tipo: "diretor"
)

Usuario.create(
	nome: "Robinson Alves", 
	matricula: 2013111, 
	diretoria: "DIATINF", 
	senha: 1234, 
	tipo: "professor"
)

Usuario.create(
	nome: "Placido Neto", 
	matricula: 2013112, 
	diretoria: "DIATINF", 
	senha: 1234, 
	tipo: "professor"
)

Usuario.create(
	nome: "Gilda Menezes", 
	matricula: 2013221, 
	diretoria: "DIACON", 
	senha: 1234, 
	tipo: "professor"
)

Usuario.create(
	nome: "Flavio Oliveira", 
	matricula: 2013222, 
	diretoria: "DIACON", 
	senha: 1234, 
	tipo: "professor"
)

#Fotocopium.create(
#	titulo:, 
#	originais:, 
#	quantidade:, 
#	data:, 
#	justificativa:, 
#	matricula:, 
#	check:
#)