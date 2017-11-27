def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, value)
  pet_shop[:admin][:total_cash] = total_cash(pet_shop) + value
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  pet_shop[:admin][:pets_sold] = pets_sold(pet_shop) + sold
end

def pets_in_stock(pet_shop)
  return pet_shop[:pets]
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  matches = []
  for pet in pets_in_stock(pet_shop)
    matches << pet if(pet[:breed] == breed)
  end
  return matches
end

def find_pet_by_name(pet_shop, pet_name)
  for pets in pet_shop[:pets]
    if pets[:name] == pet_name
      return pets
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_to_delete)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_to_delete
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_pet_count(customers)
  number_of_pets = 0
  for pet in customers[:pets]
    number_of_pets += customers[:pets].length
  end
  return number_of_pets
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets] << new_pet
end
