
#1  COMPLETE!! Booyah
def generate_username1 (first_name)
  first_name[0].strip.downcase
end
#2  2/5
def generate_username2 (first_name, last_name)
  if last_name != ""
  first_name.strip.gsub(/[^A-Za-z]/, '').downcase[0].concat(last_name.strip.gsub(/[^A-Za-z]/, '').downcase)
  end
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
  	(privilege >= 1? user_priv += "-" : "") + first_name.chomp[0].downcase + last_name.downcase + birth_year.to_s.chomp[-2..-1]
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
