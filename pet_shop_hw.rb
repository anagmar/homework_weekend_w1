
def pet_shop_name(petshop)
  petshop[:name]
end

..
def total_cash(petshop)
  petshop[:admin][:total_cash]
end


def add_or_remove_cash(petshop, addition)
   petshop[:admin][:total_cash] += addition
end


def pets_sold(petshop)
  petshop[:admin][:pets_sold]
end


def increase_pets_sold(petshop,pets_sold)
  petshop[:admin][:pets_sold]+= pets_sold
end


def stock_count(petshop)
  petshop[:pets].count
end


def pets_by_breed(petshop,name_breed)
  total_breeds = []
  for animal in petshop[:pets]
     if name_breed == animal[:breed]
       total_breeds.push(animal)
     end
   end
   return total_breeds
end


def find_pet_by_name(petshop, pet_name)
  for name in petshop[:pets]
    if pet_name == name[:name]
      return name
    end
  end
    return nil
end


def remove_pet_by_name(petshop, pet_name)
  for name in petshop[:pets]
    if pet_name == name[:name]
       petshop[:pets].delete(name)
        return nil
    end
  end
end


def add_pet_to_stock(petshop,new_pet)
  return petshop[:pets].push(new_pet).count
end


def customer_cash(customers)
  customers[:cash]
end


def remove_customer_cash(customers,amount)
  return customers[:cash] -= amount
end


def customer_pet_count(customer)
  customer[:pets].count
end


def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
  return customer[:pets].count
end
