# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
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

Fotocopium.create(
	titulo: "Paradigmas de Programação", 
	originais: 20, 
	quantidade: 10, 
	"data(1i)"=>"2014", 
 	"data(2i)"=>"9", 
 	"data(3i)"=>"7", 
	justificativa: "Material de estudo", 
	matricula: 2013101, 
	check: 0
)

Fotocopium.create(
	titulo: "Concreto Armado", 
	originais: 20, 
	quantidade: 10, 
	"data(1i)"=>"2014", 
 	"data(2i)"=>"9", 
 	"data(3i)"=>"7", 
	justificativa: "Material de estudo", 
	matricula: 2013202, 
	check: 0
)

Fotocopium.create(
	titulo: "Estruturas de Dados", 
	originais: 20, 
	quantidade: 10, 
	"data(1i)"=>"2014", 
 	"data(2i)"=>"9", 
 	"data(3i)"=>"7", 
	justificativa: "Material de estudo", 
	matricula: 2013111, 
	check: 0
)

Fotocopium.create(
	titulo: "Diagramas UML", 
	originais: 20, 
	quantidade: 10, 
	"data(1i)"=>"2014", 
 	"data(2i)"=>"9", 
 	"data(3i)"=>"7", 
	justificativa: "Material de estudo", 
	matricula: 2013112, 
	check: 0
)

Fotocopium.create(
	titulo: "AutoCAD básico", 
	originais: 20, 
	quantidade: 10, 
	"data(1i)"=>"2014", 
 	"data(2i)"=>"9", 
 	"data(3i)"=>"7", 
	justificativa: "Material de estudo", 
	matricula: 2013221, 
	check: 0
)

Fotocopium.create(
	titulo: "Estruturas Metalicas", 
	originais: 20, 
	quantidade: 10, 
	"data(1i)"=>"2014", 
 	"data(2i)"=>"9", 
 	"data(3i)"=>"7", 
	justificativa: "Material de estudo", 
	matricula: 2013222, 
	check: 0
)
=end

Admin.create(
	senha: 909090,
	limiteCopias: 400
)