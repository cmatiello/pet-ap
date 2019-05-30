module PetsHelper
  def check_picture(pet)
    if pet.picture.attached?
      url_for(pet.picture)
    else
      "/images/pet.png"
    end
  end
end
