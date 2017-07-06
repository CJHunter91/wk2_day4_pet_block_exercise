require_relative('pet')

class PetShop

  def initialize (input_pets)
    @pets = input_pets
  end

  def pet_type(pet_name)
    @pets.find{|pet| return pet.type if pet.name == pet_name}

  end

  def get_names_of_all_pets_of_type(type)
    return @pets.map!{|pet| pet.name if pet.type == type}.compact
  end
  def get_number_of_pets_costing_at_least(value)
    return @pets.select{|pet| pet if pet.price >= value}.count
  end
end