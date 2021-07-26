# inside of first_computer, create a computer instance using your Computer class
def first_computer
  Computer.create(
    brand: "Apple",
    model: "Macbook Pro",
    screen_size: 15.0,
    model_year: 2012
  )
end

# inside of second_computer, create a computer instance using your Computer class
def second_computer
  Computer.create(
    brand: "Apple",
    model: "Macbook Pro",
    screen_size: 13.0,
    model_year: 2020
  )
end
