select *from employer where salaire<all(select(MAX(salaire)) from employer group by ville);