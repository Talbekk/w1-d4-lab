def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, fave_food)
  for food in person[:favourites][:snacks]
    if ( food == fave_food )
      return true
    end
  end
    return false
end
