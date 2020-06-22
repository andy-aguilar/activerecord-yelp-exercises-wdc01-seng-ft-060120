Dish.destroy_all
Restaurant.destroy_all
DishTag.destroy_all
Tag.destroy_all

20.times do
    Restaurant.create(name: Faker::Restaurant.unique.name)
end

Restaurant.all.each do |restaurant|
    10.times do
        restaurant.dishes << Dish.create(name: Faker::Food.dish)
    end
    restaurant.save
end

15.times do
    Tag.create(name: Faker::Restaurant.unique.type)
end

Dish.all.each do |dish|
    dish.tags << Tag.all.sample(3)
    dish.save
end
