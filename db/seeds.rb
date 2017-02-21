# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Category.destroy_all

3.times do |t|
	c=Category.create(name:"Categoria#{t}")
	c.products.build(name:"Producto#{t}", price: 2000)
	Product.create(name:"Producto#{t}", price:4000, category_id: c.id)

end

Product.last.destroy
p=Product.last
p.premium ="true"
p.save



Category.all.each do |up|
	up.name = up.name.upcase
	up.save
end
