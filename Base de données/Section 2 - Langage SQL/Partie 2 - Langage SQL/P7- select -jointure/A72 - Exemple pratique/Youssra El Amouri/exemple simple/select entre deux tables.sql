select p.projet_id,p.titre,t.projet_id from projets p inner join taches t on p.projet_id=t.projet_id;