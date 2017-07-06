require_relative('pet')

class PetShop

  def initialize (input_pets)
    @pets = input_pets
  end

  def pet_type(pet_name)
    @pets.find{|pet| return pet.type if pet.name == pet_name}

  end

end