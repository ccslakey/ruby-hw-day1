<<<<<<< HEAD
#1  COMPLETE!! Booyah
def generate_username1 (first_name)
  first_name[0].strip.downcase
end
#2  2/5
def generate_username2 (first_name, last_name)
  
  first_name.lstrip[0].downcase.concat(last_name.lstrip.downcase)
  
end
#3 2/3
def generate_username3 (first_name, last_name, birth_year)
  if ((birth_year.to_s.length == 4) && (birth_year<2015) && (birth_year>1900))
  	first_name.chomp[0].downcase + last_name.downcase + birth_year.to_s.chomp[-2..-1]
  end
end
#4 Stretch goals met? Test it out!
def generate_username4 (first_name, last_name, birth_year, privilege="0")
  user_priv = ""
  if (privilege == 1)
      user_priv = "seller"
  elsif (privilege == 2)
  	user_priv = "manager"
  elsif (privilege == 2)
  	user_priv = "admin"
  end

  if ((birth_year.to_s.length == 4) && (birth_year<2015) && (birth_year>1900))
  	return (privilege >= 1? user_priv += "-" : "") + first_name.chomp[0].downcase + last_name.downcase + birth_year.to_s.chomp[-2..-1]
  end
end
#5 Uniqueness
def generate_username5
	
end
# 6 playing with inputs
def generate_username6a
	puts "Give me your info in this format please:"
  puts "['Connor', 'Slakey', 1993]"
  input = gets
  generate_username5(inputs)
end

def generate_username6b
	
end
=======
def generate_username1(name)
  #remove whitespace & downcase
  name[0].strip.downcase
end

def generate_username2(first, last)
  #check to see if last is empty
  return nil if last.empty?
  #call generate_username 1 & remove special characters/whitespace then downcase
  generate_username1(first) + last.gsub(/[^A-Za-z]/, '').downcase
end

def generate_username3(first, last, year)
  #convert year to a string
  year_string = year.to_s
  #check to see that it's equal to 4 digits
  return nil if year_string.length != 4
  #call generate_username2 and pluck out last two digits
  generate_username2(first, last) + year_string[2,2]
end

$user_types = ["user", "seller", "manager", "admin"]

def check_privilege(type=0)
  $user_types[type]
end

def generate_username4(first, last, year, type=0)
  return generate_username3(first, last, year) if type == 0
  check_privilege(type) + "-" + generate_username3(first, last, year)
end

$users = []

def generate_username5(first, last, year)
  #generate a username
  user = generate_username4(first, last, year)
  #return the username unless it exists in users & add to users
  unless $users.include?(user)
    $users << user
    return user
  end
  #loop through the users and incriment by 1 each time checking if that user exists
  user_is_not_unique = true
  #counter
  i = 1
  while user_is_not_unique do
    #create a temporary username based on counter
    new_username = user + "_" + i.to_s
    #increment counter
    i += 1
    #if the username does not exist...
    unless $users.include?(new_username)
      #indicate the user is unique to break out of the loop
      user_is_not_unique = false
      #set the username to the unique name
      username = new_username
    end
  end
  #push the username into the users array
  $users << username
  #return the new username
  username
end
>>>>>>> origin/master
