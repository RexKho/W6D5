# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ActiveRecord::Base.connection.reset_pk_sequence!('cats')

meowy = Cat.create!(birth_date: '2015/01/20',color: "red", name: "Meowy", sex: "F" )
riley = Cat.create!(birth_date: '2015/08/10',color: "gray", name: "Riley", sex: "M" )
rex = Cat.create!(birth_date: '1994/08/11',color: "yellow", name: "Rex", sex: "M" )