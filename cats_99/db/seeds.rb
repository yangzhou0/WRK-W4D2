# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all

Cat.create!(
  birth_date: Date.new(1993, 1, 1),
  color: 'Black',
  name: 'Iron Man',
  sex: 'Male',
  description: 'Super rich playboy cat'
)

Cat.create!(
  birth_date: Date.new(1993, 05, 07),
  color: 'Purple',
  name: 'Cheshire Cat',
  sex: 'Male',
  description: 'Leading Alice astray since 1993'
)

Cat.create!(
  birth_date: Date.new(2007, 11, 10),
  color: 'Red',
  name: 'Bonnie',
  sex: 'Female',
  description: 'Robbing banks and eloping with Clyde'
)

CatRentalRequest.destroy_all
CatRentalRequest.create!(
  cat_id: Cat.all.first.id,
  start_date: Date.new(2018, 1, 10),
  end_date:Date.new(2018, 2, 10),
  status: 'Approved'
)
#
CatRentalRequest.create!(
  cat_id: Cat.all.first.id,
  start_date: Date.new(2017, 1, 10),
  end_date:Date.new(2017, 2, 10),
  status: 'Pending'
)
#
CatRentalRequest.create!(
  cat_id: Cat.all.last.id,
  start_date: Date.new(2017, 3, 1),
  end_date:Date.new(2017, 4, 1),
  status: 'Pending'
)

CatRentalRequest.create!(
  cat_id: Cat.all.last.id,
  start_date: Date.new(2017, 1, 10),
  end_date:Date.new(2017, 3, 10),
  status: 'Pending'
)

CatRentalRequest.create!(
  cat_id: Cat.all.last.id,
  start_date: Date.new(2017, 3, 15),
  end_date:Date.new(2017, 4, 10),
  status: 'Pending'
)

CatRentalRequest.create!(
  cat_id: Cat.all.last.id,
  start_date: Date.new(2017, 2, 1),
  end_date:Date.new(2017, 5, 1),
  status: 'Pending'
)

CatRentalRequest.create!(
  cat_id: Cat.all.last.id,
  start_date: Date.new(2017, 3, 5),
  end_date:Date.new(2017, 3, 20),
  status: 'Pending'
)
