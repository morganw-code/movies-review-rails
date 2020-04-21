for i in 1..10
    Movie.create(title: Faker::Superhero.name, run_time: Faker::Number.number(digits: 3), adult_rated: Faker::Boolean.boolean)
end