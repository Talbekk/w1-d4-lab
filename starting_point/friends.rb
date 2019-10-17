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

def add_friend(person, friend_name)
  person[:friends].push(friend_name)
  return person[:friends].length()
end

def remove_friend(person, friend_name)
  for friend in person[:friends]
    if ( friend == friend_name )
      person[:friends].delete(friend)
    end
  end
  return person[:friends].length() 
end
