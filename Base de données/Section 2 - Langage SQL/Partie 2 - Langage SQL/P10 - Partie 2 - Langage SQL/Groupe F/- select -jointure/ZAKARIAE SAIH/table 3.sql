select P.id,P.titre,t.projet_id,Ts.tache_id from projets P inner join Taches T on P.id = T.projet_id inner join TachesStagiaires Ts on t.id = Ts.tache_id ;