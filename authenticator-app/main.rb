def main
  puts "Welcome to the Authenticator"
  25.times { print "-" }
  puts 
  username_passwords = [
    { username: "user1", password: "password1" },
    { username: "user2", password: "password2" },
  ]
  attempts = 0

  while attempts < 3
    print "Enter your username: "
    username = gets.chomp
    puts "You entered: #{username}"
    print "Enter your password: "
    password = gets.chomp
    puts "You entered: #{password}"

    username_passwords.each do |username_password|
      if username_password[:username] == username && username_password[:password] == password
        puts "You are logged in"
        return
      end
    end
  
    puts "Credentials were not correct. Try again"
    attempts += 1
  end
  
  puts "You have exceeded the number of attempts"
end

main