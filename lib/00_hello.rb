def ask_first_name
    puts "Quel est ton prénom ?"
    print "> "
    first_name = gets.chomp
    return first_name
end

def salutation(first_name)
    puts "Bonjour #{first_name} !"
end

def executer
    first_name = ask_first_name
    salutation(first_name)
end

executer

