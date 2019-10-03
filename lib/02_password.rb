def signup
    puts "Définis ton mot de passe :"
    password=gets.chomp
 end

 def login (password)
    puts "Quel est ton mot de passe ?"
    input=gets.chomp
    variable=(password == input) #verifie si password=input car variable est pour un booléen. true ou false est stocké dans variable
 end
 
 def welcome_screen
        puts "***************************************************************************************************************************************************************************"
        puts "**************************************************************************************************************************************************************************"
        puts "************Bienvenue dans la zone secrète***********"
 end

 def perform
    mot_de_passe = signup #stock la variable sign up
    tentativedumec = login(mot_de_passe) #va comparer le sign up et login et tenter la connexion
    while not tentativedumec #tentativedumec est un booléen donc while not traite du booléen
        puts "Mot de passe incorrect, veuillez réessayer"
        tentativedumec = login(mot_de_passe)
    end
    welcome_screen

 end
 perform