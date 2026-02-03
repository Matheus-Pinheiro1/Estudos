dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
def get_city_names(dial_book)
  dial_book.keys
end
 
def get_area_code(dial_book, key)
  dial_book[key]
end
 
loop do
    puts "Do you want to look up an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != 'y'
    puts "Here are all available cities:"
    puts get_city_names(dial_book)
    puts "Enter the city name to get its area code:"
  city_name = gets.chomp
  if dial_book.include?(city_name)
     puts "The area code for #{city_name} is #{get_area_code(dial_book, city_name) }"
  else
    puts "#{city_name} is not in the dial book."
  end
end