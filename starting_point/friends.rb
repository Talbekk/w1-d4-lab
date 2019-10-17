@person1 = {
  name: "Shaggy",
  age: 12,
  monies: 1,
  friends: ["Velma","Fred","Daphne", "Scooby"],
  favourites: {
    tv_show: "Friends",
    snacks: ["charcuterie"]
  }
}

@person5 = {
  name: "Daphne",
  age: 20,
  monies: 100,
  friends: [],
  favourites: {
    tv_show: "X-Files",
    snacks: ["spinach"]
  }
}

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

def total_of_money(arrays)
  total = 0
  for array in arrays
    total += array[:monies]
  end
  return total
end

def loan_to_friend(lender, lendee, amount)
  # access lender money and take the mount from lender
  lender[:monies] = lender[:monies] - amount
  # access lendee money and transfer money to londee
  lendee[:monies] = lendee[:monies] + amount
  return "#{lender[:name]} has #{lender[:monies]}. #{lendee[:name]} has #{lendee[:monies]}"
end

def everyones_fave_food(people)
  favourite_snacks = []
  for person in people
    for snack in person[:favourites][:snacks]
    favourite_snacks << snack
    end
  end
  return favourite_snacks
end

def people_no_friends(people)
  no_friends = []
  for person in people
    if person[:friends].length() == 0
      no_friends << person[:name]
    end
  end
  return no_friends
end
