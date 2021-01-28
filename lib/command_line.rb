

def find_character_by_real_name
    puts "Please enter a real name:" 
    name = gets.strip  
    
    character = Character.all.filter{|character| character.real_name == name}
    character.each do |hero|
        puts "Super name: #{hero.super_name}"
        puts "Real name: #{hero.real_name}"
        puts "Alignment: #{hero.alignment}"
    end
end





# def find_character_by_super_name 
#     puts "Please enter a super name:"
#     name = gets.strip  
    
#     character = Character.all.filter{|character| character.super_name == name}
#     character.each do |hero|
#         puts "Super name: #{hero.super_name}"
#         puts "Real name: #{hero.real_name}"
#         puts "Alignment: #{hero.alignment}"
#     end
#     binding.pry 
# end

# def find 
#     puts "Enter Name:"
#     name = gets.strip 
#     Character.find_by
# end






# def welcome 
#     puts "Welcome to Marelous!!!"
#     puts "Created by: Colin Schlecht and Harrf Akbar"
# end

# def search_by
#     puts ""
#     puts "Please choose one of the following:"
#     puts "  super hero name: "
# end

# def user_input
#     puts "Please enter a "

# end

# def help
#     puts "I accept the following commands:"
#     puts "- help : displays this help message"
#     puts "- list : displays a list of songs you can play"
#     puts "- play : lets you choose a song to play"
#     puts "- exit : exits this program"
# end






# Command line innitates:
# "hello there! "welcome message"
# "I'm here to help you find all the ~marvelous~ info youu're looking for"
# Are you looking for:

# 1. Character bio
# 2. Character movie history
# 3. Character actors
# 4. all?

# How would you like to search?
# (if 1 - options would include
# 1. searrch by char Name
# 2. search by Birth name)

# (later add in option to get )