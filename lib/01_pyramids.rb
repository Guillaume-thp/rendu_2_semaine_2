def wtf_pyramid #demander nombre d'étages utilisateur
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print "> "
    nb_etage = gets.chomp.to_i 

if (nb_etage > 25 || nb_etage <1 || nb_etage%2 ==0) #conditions étage : doit être compris entre 1 et 25 et impair
    puts "Faux! : ton nombre doit être impair et compris entre 1 et 25"
    nb_etage = gets.chomp.to_i 
    else puts "Voici la pyramide :"
end

compteur=1
while (nb_etage/2)+1 >= compteur #condition qui arrête la pyramide à la moitié
    puts " "*(nb_etage-compteur)+"#"*compteur+"#"*(compteur-1)
    compteur +=1

end

while compteur < nb_etage && compteur >= 1 #condition qui inverse et termine la pyramide
    puts " "*(nb_etage-compteur)+"#"*compteur+"#"*(compteur-1)
    compteur -=1

end
end
wtf_pyramid #lance la méthode
