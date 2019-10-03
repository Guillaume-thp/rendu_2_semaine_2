def init #permet de ne jamais retomber à 0 car à usage unique
    @marche_initiale = 0
end

def lancer_de_des #lancé de dé aléatoire / affiche le résultat
    @lancer = rand (1..6)
    puts @lancer
    
 end

def resultat_des #définit ce qu'il se passe si 5 ou 6 aux dés

    if @lancer == 5 || @lancer == 6
    puts "Tu avances d'une marche. Tu es à présent sur la marche #{@marche_initiale}"
    @marche_initiale +=1

    elsif @lancer == 1 && @marche_initiale > 0
    puts "Tu descends d'une marche. Tu es à présent sur la marche #{@marche_initiale}"
    @marche_initiale -=1

    else @lancer == 2 || @lancer == 3 || @lancer == 4
    puts "Tu restes où tu es. Tu es à présent sur la marche #{@marche_initiale}"
    @marche_initiale
    end

end

def rejouer_des
    if @marche_initiale < 10
    perform
    else puts "Bravo, tu as atteint la 10ème marche!"
    end
end

#def average_finish_time
    #100.times do
    #rejouer_des
    #puts average.rejouer_des
    #pas réussi à le faire

def perform
    lancer_de_des
    resultat_des
    rejouer_des
end

init
perform