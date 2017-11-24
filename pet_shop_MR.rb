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

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

# def all_pets_by_breed_found(pet_shop, breeds)
#   total = 0
#   for breeds in pet_shop
#     total += pets_shop[:pets][:breed]
#   end
#   return total
# end

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
