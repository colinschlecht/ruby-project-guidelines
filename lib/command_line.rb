require 'pry'
require 'colorize'
require 'colorized_string' 
class CommandLine 

###################      Methods         ########################


###### Character search methods ######
def find_character_by_real_name
    system "clear"
    puts "Please enter a character's Incognito (given) name:" 
    name = gets.strip  
    hero = Character.find_by("real_name LIKE ?", "%#{name}%")
    system "clear"
    puts "\n\nKnown Aliases: #{hero.super_name}\n\n"
    puts "Real name: #{hero.real_name}\n\n"
    puts "Alignment: #{hero.alignment}\n\n\n\n\n"
end

def find_character_by_super_name
    system "clear"
    puts "Please enter a character's Super (Hero or Villian) name:" 
    name = gets.strip  
    
    hero = Character.find_by("super_name LIKE ?", "%#{name}%")
    puts "\n\nKnown Aliases: #{hero.super_name}\n\n"
    puts "Real name: #{hero.real_name}\n\n"
    puts "Alignment: #{hero.alignment}\n\n"
end

def find_char_by_actor_name
    system "clear"
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
    system "clear"
    puts "Please enter an Actor's name:"
    name = gets.strip
    char = Actor.find_by("name LIKE ?", "%#{name}%").movies.first
    puts "\n\nHere's a list of Marvelous movies that #{name} has been in:\n\n#{char.title}.\n\n\n"
end

def find_movies_by_super_name
    system "clear"
    puts "Please enter an Super (Hero or Villian) name:"
    name = gets.strip
    char = Character.find_by("super_name LIKE ?", "%#{name}%").movie
    puts "\n\nHere's a list of Marvelous movies that #{name} has been in:\n\n#{char.title}.\n\n\n"
end

def find_movies_by_real_name
    system "clear"
    puts "Please enter an Incognito (given) name:"
    name = gets.strip
    char = Character.find_by("real_name LIKE ?", "%#{name}%").movie
    puts "\n\nHere's a list of Marvelous movies that #{name} has been in:\n\n#{char.title}.\n\n\n"
end

##### Actor search methods #####
def find_actor_by_super_name
    system "clear"
    puts "Please enter an Super (Hero or Villian) name:"
    name = gets.strip
    char = Character.find_by("super_name LIKE ?", "%#{name}%").actor
    puts "\n\nHere's a Marvelous Actor that has played #{name}:\n\n#{char.name}.\n\n\n"
end

def find_actor_by_real_name
    system "clear"
    puts "Please enter an Incognito (given) name:"
    name = gets.strip
    char = Character.find_by("real_name LIKE ?", "%#{name}%").actor
    puts "\n\nHere's a Marvelous Actor that has played #{name}:\n\n#{char.name}.\n\n\n"
end

################## all puts messages ######################
def greeting
    font = TTY::Font.new(:doom)
    5.times do 
        puts "\n"
    end
    puts "________________________ WELCOME TO ___________________________"
    puts font.write("MARVELOUS", letter_spacing: 0).colorize(:red)
end

def how_to_menu
    puts "Please choose one of the options below to proceed\n\n"
    puts "~Press #{Rainbow("a").red} to search for an actor\n\n"
    puts "~Press #{Rainbow("c").red} to seach for a Marvel Character\n\n"
    puts "~Press #{Rainbow("m").red} to search for a Marvel Movie\n\n"
    puts "~Press #{Rainbow("e").red} to exit.\n\n"
end

    def char_search_req
        puts "Would you like to search by Super Name, Incognito Name, or Actor Name?"
        single_space
        puts "Press #{Rainbow("s").red} to search by Super Name (i.e. Iron Man)"
        spaces
        puts "Press #{Rainbow("i").red} to search by Incognito Name (i.e. Dave)"
        spaces
        puts "Press #{Rainbow("a").red} to search by Actor Name (i.e. 'Chris Pratt')"
    end
    def actor_search_req
        puts "Would you like to search by a Super Name or Incognito Name?"
        spaces
        puts "Press #{Rainbow("s").red} to search by Super Name (i.e. Iron Man)"
        spaces
        puts "Press #{Rainbow("i").red} to search by Incognito Name (i.e. Dave)"
        spaces
    end

    def waiting
        3.times do 
            print "."
            sleep 0.3
        end
    end

    def exit_marvelous
    font = TTY::Font.new(:doom)
    puts"\n\nAnd thank you for using......"
    sleep 1.4
    puts font.write("MARVELOUS", letter_spacing: 0).colorize(:red)
    puts "A project by Colin Schlecht and Harrf Akbar"
        4.times do 
            puts "\n"
        end
        
    end
def single_space
    puts "\n\n"
end
    
def spaces                                                                                                                                   
    5.times do 
        puts "\n"
    end
end
def wrong_prompt
    system "clear"
    puts "Hmmmm spidey didn't like that answer...."
    sleep 0.8
    spidey_spray
    sleep 0.6
    spidey_blast
    sleep 0.4
    system "clear"
end

def returning
    waiting
    puts "Returning to main screen. You may scroll back up to view your results at any time!"
    sleep 3.5
end

def wait_and_return
    sleep 0.4
    waiting
    single_space
    waiting
    single_space
    returning
end
    
    
    ############################         the loop          ##############################
    
    def call
        system "clear"
        loop do
            greeting
            how_to_menu
            choice = gets.chomp
            case choice
            when "b"
                waiting
                greeting
                how_to_menu
                choice = gets.chomp
                
            when "e" #exiting CLI app
                full_web
                spaces
                spiderman
                sleep 1.4
                exit_marvelous
                spaces
                exit
                
            when "c" #searching for a marvel character
                system "clear"
                char_search_req
                second_choice = gets.chomp
                case second_choice
                when "s" #searching for a marvel character by super name
                    find_character_by_super_name
                    wait_and_return
                when "i" #searching for a marvel character by real name
                    find_character_by_real_name
                    wait_and_return
                when "a" #searches for a marvel character by actor name
                    find_char_by_actor_name
                    wait_and_return
                when "b"
                    waiting
                    greeting
                    how_to_menu
                    choice = gets.chomp
                else
                   wrong_prompt
                   char_search_req
                end
                
            when "m" #searching for a movie
                system "clear"
                char_search_req
                second_choice = gets.chomp
                case second_choice
                when "s" #searching for a marvel Movie by super name
                    find_movies_by_super_name
                    wait_and_return
                when "i" #searching for a marvel Movie by real name
                    find_movies_by_real_name
                    wait_and_return
                when "a" #searching for a marvel movie by actor name
                    find_movies_by_actor_name
                    wait_and_return
                when "b"
                    waiting
                    greeting
                    how_to_menu
                    choice = gets.chomp
                else
                    wrong_prompt
                    char_search_req
                end
                
            when "a" #searching for an actor
                system "clear"
                actor_search_req
                second_choice = gets.chomp
                case second_choice
                when "s" #searches for an actor by super hero name
                    find_actor_by_super_name
                    wait_and_return
                when "i" #searches for an actor by incognito name
                    find_actor_by_real_name
                    wait_and_return
                when "b"
                    waiting
                    greeting
                    how_to_menu
                    choice = gets.chomp
                else
                    wrong_prompt
                    actor_search_req
                end
            else
                wrong_prompt
                
            end
        end
    end
    
    
    
    ############################ The BONE YARD ####################################
    
    #recycling bin.
    def spidey_spray
        puts Rainbow("
                   ,,,, 
             ,;) .';;;;',
 ;;,,_,-.-.,;;'_,|I\\;;;/),,_
  `';;/:|:);{ ;;;|| \\;/ /;;;\\__
      L;/-';/ \\;;\\',/;\\/;;;.') \
      .:`''` - \\;;'.__/;;;/  . _'-._ 
    .'/   \\     \\;;;;;;/.'_7:.  '). \\_
  .''/     | '._ );}{;//.'    '-:  '.,L
.'. /       \\  ( |;;;/_/         \\._./;\\   _,
 . /        |\\ ( /;;/_/             ';;;\\,;;_,
. /         )__(/;;/_/                (;;'''''
 /        _;:':;;;;:';-._             );
/        /   \\  `'`   --.'-._         \\/
       .'     '.  ,'         '-,
      /    /   r--,..__       '.\
    .'    '  .'        '--._     ]
    (     :.(;>        _ .' '- ;/
    |      /:;(    ,_.';(   __.'
     '- -''|;:/    (;;;;-'--'
           |;/      ;;(
           ''      /;;|
                   \\;;|
                    \\/").red
    end
    
    def full_web
        web_line
        sleep 0.2
        web_line
        sleep 0.2
        web_line
        sleep 0.2
        web_line
    end
end

def web_line
   5.times do puts"                                        $`
                                         `$
                                        ,$"
end
end
def spiderman
puts Rainbow("
                                     `$/              
           __                        O$               
       _.-'  )                        $'              
    .-'`. .-':        o      ___     ($o              
 .-'.-  .'   ;      ,st+.  .' , \\    ($               
:_..-+''    :       T   '^T==^;\\;;-._ $\\              
   ''''-,   ;       '    /  `-:-// / )$/              
        :   ;           /   /  :/ / /dP               
        :   :          /   :    )^-:_.l               
        ;    ;        /    ;    `.___, \\           .-,
       :     :       :  /  ;.-'''   \\   \'''-,    /  ;
       ;   :  ;      ; :   :         \\   \\    \\ .'  / 
       ;   ;  :      ;   _.:          ;   \\  .-'   /l 
       ;.__L_.:   .-';  :  ;          :_   \\/ .-' / ; 
       :      ;.-'   :  ; :        _  : \\  / /  .' /  
        ;            ;  ;  ;   _.-' '-.\\ :/   .'  :   
        :            ;  ;  :.-j-,      `;:_.+'    ;   
        ;           _;  :  :.'  ;      / : /     :    
        '-._..__.--'/   :  :   /      /  ;/      ;    
                   :    ;  ;  /      ,  //      :     
                   ;    ; / .'( ,    ; ::\\     .:     
                   :    :  / .-dP-'  ;-'; `---' :     
                    `.   '' ' s')  .'  /        '     
                      \\           /;  :       .'      
                    _  '-, ;       '.  \\    .'        
                   / '-.'  :    .--.___.`--'          
       Good bye!  /      . :  .'                      
                  )_..._  \\  :                        
                 : \\    '. ; ;                        
                 ;  \\    ;   :                        
                 :   \\  /    ;                        
                  \\   )/    /                         
                   `-.___.-'
            
       ").red        
end


def spidey_blast
                             puts "z11                               
                                   z@d                               
                                    0@@.                z@.          
                                   z1jd01j'.          j11j           
                                  110jd@z@000@jjjjjz@1jd.            
                                zj@j @jd    'zzzzzj@0dz0             
jdd@j1''                    'zj@d@.   00z       .jjd1 @@             
  'z11j@00jjjzz   .zzzz'zjj00@1z.   .111@01jz'.zj10.  110            
         '''j1j1jzzz10j11z''      .zj@0@0@j1j@1@1@j   .@1@           
             .j@@''j1000@11111111@0@11@1j@00@@@01@0     1d0'         
              '@d.     jjd11@0@@dd@1@dd1jd0@1d0@zj10z    z@@0z             
               z00      00'   @1d110@d0@0@1@@j@j0@1@d@11111@1@@111@@@@@@**+`
                1@j     j0.   '@d   'j0@01j0jjjd1@@dddjzzzzz0@dj'    
                j@@     j0.   11d'j10@@@1d@1dz10?zz00.     z@0j      
                j@d'   z?0. .j@100@j   j11 jj0?@1'@d'     .@@'       
                z01   z1@jj@@d@1.     '@0z  'z1@0d1j      011        
               1z0. '@0d@@@110z'      d@d    .@j@d0j     j1@         
              0@0 .j@1jjj'  'zj@11'  .d?zzj10@@@0@jd     0@z         
            '??d1j@@0@1.       .z@@010@00@1'.    @@@0.   @d          
           1@000@11j100dd0@11z.    z1@d0111@01111j0@0d   @d          
        .j@0@?0@zzz.      'zz@d1'   1ddd0@''''''zzj@00d. d?          
     zj0d011111jzj0000@11z.   z0d0' 0z10.           .100'0dj         
 'z10@@j.             .zz10@1   '0d?zj1               j@dd@@         
@@1jz                     z10dj   00@1    ..zj'1@zzzj'.j@000z        
                            zdd@  11@  'z001jjjjjjzzj1100111d        
                             .1??j0@1z0d@.               zzzj@       
                               j?d1010@.                   .1@@'     
                                jz00j                        jd?'    
                                jj@                           .d01   
                               .11j                             j@0' 
                               j@0                               zj1 
                               j0j"
end