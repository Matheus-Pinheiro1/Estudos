users = [
    {username: 'admin', password: 'password123'},
    {username: 'user1', password: 'password123'},
    {username: 'user2', password: 'password123'},
    {username: 'user3', password: 'password123'}
]

puts "Welcome to the authentication system"
30.times { print "=" }


attempts = 0
max_attempts = 3
loop do 
    attempts += 1
    if attempts > max_attempts
        puts "Maximum attempts exceeded. Try again later."
        break
    end    
    print "\nEnter your username: "
    username_input = gets.chomp
    print "Enter your password: "
    password_input = gets.chomp

    credential = {username: username_input, password: password_input}
    if users.include?(credential)
        puts "Access Granted. Welcome, #{username_input}!"
        break
    else    
        puts "Access Denied. Invalid username or password."
    end
    puts "Press 'q' to quit or any other key to try again:"
    input = gets.chomp.downcase 
    break if input == 'q'
end
