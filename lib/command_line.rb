class CommandLine 
require 'pry'
###################      Methods         ########################

    ###### Character search methods ######
    def find_character_by_real_name
        puts "Please enter a character's given name:" 
        name = gets.strip  
        
        hero = Character.find_by("real_name LIKE ?", "%#{name}%")
        puts "\n\nKnown Aliases: #{hero.super_name}\n\n"
        puts "Real name: #{hero.real_name}\n\n"
        puts "Alignment: #{hero.alignment}\n\n\n\n\n"
    end
    
    def find_character_by_super_name
        puts "Please enter a character's Super Hero name:" 
        name = gets.strip  
        
        hero = Character.find_by("super_name LIKE ?", "%#{name}%")
        puts "\n\nKnown Aliases: #{hero.super_name}\n\n"
        puts "Real name: #{hero.real_name}\n\n"
        puts "Alignment: #{hero.alignment}\n\n"
    end
    
    def find_char_by_actor_name
        puts "Please enter an Actor's name:"
        name = gets.strip
        hero = Actor.find_by("name LIKE ?", "%#{name}%").characters.first
        puts "\n\nActor name: #{Actor.find_by("name LIKE ?", "%#{name}%").name}\n\n"
        puts "Known Aliases: #{hero.super_name}\n\n"
        puts "Real name: #{hero.real_name}\n\n"
        puts "Alignment: #{hero.alignment}\n\n"
    end
    
    ##### Movie search methods #####
    def find_movies_by_actor_name
        puts "Please enter an Actor's name:"
        name = gets.strip
        char = Actor.find_by("name LIKE ?", "%#{name}%").movies.first
        puts "\n\nHere's a list of Marvelous movies that #{name} has been in:\n\n#{char.title}.\n\n\n"
    end

    def find_movies_by_super_name
        puts "Please enter an Super's name:"
        name = gets.strip
        char = Character.find_by("super_name LIKE ?", "%#{name}%").movie
        puts "\n\nHere's a list of Marvelous movies that #{name} has been in:\n\n#{char.title}.\n\n\n"
    end

    def find_movies_by_real_name
        puts "Please enter an Incognito name:"
        name = gets.strip
        char = Character.find_by("real_name LIKE ?", "%#{name}%").movie
        puts "\n\nHere's a list of Marvelous movies that #{name} has been in:\n\n#{char.title}.\n\n\n"
    end
    
    ##### Actor search methods #####
    def find_actor_by_super_name
        puts "Please enter an Super's name:"
        name = gets.strip
        char = Character.find_by("super_name LIKE ?", "%#{name}%").actor
        puts "\n\nHere's a Marvelous Actor that has played #{name}:\n\n#{char.name}.\n\n\n"
    end

    def find_actor_by_real_name
        puts "Please enter an Incognito name:"
        name = gets.strip
        char = Character.find_by("real_name LIKE ?", "%#{name}%").actor
        puts "\n\nHere's a Marvelous Actor that has played #{name}:\n\n#{char.name}.\n\n\n"
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

    def char_search_req
        puts "Would you like to search by Super Name, Incognito Name, or Actor Name\n\n"
        puts "Press 's' to search by Super Name (i.e. Iron Man)\n\n"
        puts "Press 'i' to search by Incognito Name (i.e. Dave)\n\n"
        puts "Press 'a' to search by Actor Name (i.e. 'Chris Pratt')\n\n"
    end

    def actor_search_req
        puts "Would you like to search by a Super Name or Incognito Name?\n\n"
        puts "Press 's' to search by Super Name (i.e. Iron Man)\n\n"
        puts "Press 'i' to search by Incognito Name (i.e. Dave)\n\n"
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
                    find_character_by_super_name
                when "i" #searching for a marvel character by real name
                    find_character_by_real_name
                when "a" #searches for a marvel character by actor name
                    find_char_by_actor_name
                end
                
            when "m" #searching for a movie
                char_search_req
                second_choice = gets.chomp
                case second_choice
                    when "s" #searching for a marvel Movie by super name
                        find_movies_by_super_name
                    when "i" #searching for a marvel Movie by real name
                        find_movies_by_real_name
                    when "a" #searching for a marvel movie by actor name
                        find_movies_by_actor_name
                end
                
            when "a" #searching for an actor
                actor_search_req
                second_choice = gets.chomp
                case second_choice
                when "s" #searches for an actor by super hero name
                    find_actor_by_super_name
                when "i" #searches for an actor by incognito name
                    find_actor_by_real_name
                end
                
            end
        end
    end
    
end


############################ The BONE YARD ####################################

#recycling bin.
