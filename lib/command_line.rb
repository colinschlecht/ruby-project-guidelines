class CommandLine 

###################      Methods         ########################

    def find_character_by_real_name
        # puts "Please enter a character's given name:" 
        name = gets.strip  
        
        character = Character.all.filter{|character| character.real_name == name}
        character.each do |hero|
            puts "\n\n**Marvelous!**\n\nResults for #{name}...\n\n"
            puts "Known Aliases: #{hero.super_name}\n\n"
            puts "Real name: #{hero.real_name}\n\n"
            puts "Alignment: #{hero.alignment}\n\n\n\n\n"
        end
    end
    
    def find_character_by_super_name
        # puts "Please enter a character's Super Hero name:" 
        name = gets.strip  
        
        character = Character.all.filter{|character| character.super_name == name }
        character.each do |hero|
            puts "\n\n**Marvelous!**\n\nResults for #{name}...\n\n"
            puts "Known Aliases: #{hero.super_name}\n\n"
            puts "Real name: #{hero.real_name}\n\n"
            puts "Alignment: #{hero.alignment}\n\n"
        end
    end

    def all_chars_by_movie
    end

    ####

    def find_movies_by_super_name
    end
    def find_movies_by_real_name
    end

    ####

    def find_actor_by_super_name
    end
    def find_actor_by_real_name
    end
    def all_actors_by_movie
    end

    ################## all puts messages ######################
    
    def greeting
        puts "Hello there! \n\nWelcome to ~~ Marvelous ~~\n\n"
    end
    
    def how_to_menu
        puts "Please choose one of the options below to proceed\n\n"
        puts "~Press 'a' to search for an actor\n\n"
        puts "~Press 'c' to seach for a Marvel Character\n\n"
        puts "~Press 'm' to search for a Marvel Movie\n\n"
        puts "~Press 'e' to exit.\n\n"
    end
    ##If searching by character name
    def char_search_req
        puts "Would you like to search by a 'Super Name' or 'Incognito name' type?\n\n"
        puts "**Please enter 's' or 'i' to proceed**\n\n"
    end
    def actor_search_req
        puts "Would you like to search for an actor by a 'Super Name', 'Incognito name', or list all Actors in a movie?\n\n"
        puts "**Please enter 's' 'i' or 'a' to proceed**\n\n"
    end
    def super_search
        puts "\n\nPlease enter a 'Super Name.' \n\n"
    end
    
    def real_search
        puts "\n\nPlease enter an 'Incognito Name.' \n\n"
    end

    ##If searching by movie 
    def all_chars_names_search
        puts "Please enter a movie title to get a list of character names."
    end

    def all_actor_names
        puts "Please enter a movie title to get a list of all actor names.\n\n"
    end
    
    def exit_marvelous
        puts "Goodbye!"
    end

    
 ############################         the loop          ##############################

    def call
        greeting
        loop do
            how_to_menu
            choice = gets.chomp
            case choice

            when "e" #exiting CLI app
                exit_marvelous
                exit

            when "c" #searching for a marvel character
                char_search_req
                second_choice = gets.chomp
                case second_choice
                when "s" #searching for a marvel character by super name
                    super_search
                    find_character_by_super_name
                when "i" #searching for a marvel character by real name
                    real_search
                    find_character_by_real_name
                when "a" #all characters by movie
                    all_chars_names_search
                    all_cars_by_movie
                end

            when "m" #searching for a movie
                char_search_req
                second_choice = gets.chomp
                case second_choice
                when "s" #searching for a marvel Movie by super name
                    super_search
                    find_movies_by_super_name
                when "i" #searching for a marvel Movie by real name
                    real_search
                    find_movies_by_real_name
                when "a" #searching for a marvel movie by actor name
                end

            when "a" #searching for an actor
                actor_search_req
                second_choice = gets.chomp
                case second_choice
                when "s" #searches for an actor by super hero name
                    super_search
                    find_actor_by_super_name
                when "i" #searches for an actor by incognito name
                    real_search
                    find_actor_by_real_name
                when "a" #searches for all actors in a movie
                    all_actor_names
                    all_actors_by_movie
                end
                
            end
        end
    end
    
end


############################ The BONE YARD ####################################










# def get_char_by_real_name
#     initial_response
#     character = Character.all.filter{|character| character.real_name == name}
# end




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