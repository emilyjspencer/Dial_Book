dial_book = {
    "Sheffield" => "0114",
    "Bristol" => "0117",
    "Birmingham" => "0121",
    "Cambridge" => "01223",
    "Bath" => "01225",
    "Brighton" => "01273",
    "Harrogate" => "014232",
    "Liverpool" => "0151",
    "Isle of Man" => "01624",
    "Richmond" => "01748",
    "York" => "01904",
    "Durham" => "01913",
    "Warwick" => "01926",
    "London" => "020"
    }
    
    def get_city_names(dial_book)
        dial_book.each { |key, value|
        puts key}
        # hash.keys
    
    end
    
    def get_dial_code(dial_book, city)
        dial_book[city] 
    end 
    
    loop do
    puts "Do you want to look up a dial code based on a city name?(Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
          puts "Which city do you want a dial code for?"
          get_city_names(dial_book)
          puts "Enter your selection: "
          city = gets.chomp
          if dial_book.include?(city)
            puts "The dial code for #{city} is #{get_dial_code(dial_book, city)}"
          else
            puts "You entered an invalid city"
          end 
     
          
     
    end
   