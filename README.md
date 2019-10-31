Gossip project de THP sur un serveur local codé en ruby on rails.
--

bundle install - rails db:create - rails db:migrate - rails server

--

Salut, le projet à été effectué sauf pour la partie 2.6 
Ce que je n'ai pas réussi à faire : 
- Le login automatique dans la foulée de la création d'un user. (dernière phrase de la consigne de l'exercice 2.2.1) 
- La vérification de l'auteur des ragots dans les méthode update/delete du controller gossip (Deuxième phrase de l'exercice 2.5 "De plus..."). J'ai laissé ma tentative en commentaire dans le gossips_controller.
- Tout ce qui est lié au formulaire de commentaire car je n'avais pas réussi à faire ce dernier la veille.
- Un beau front :D Je m'y suis pas trop attardé mais par exemple j'ai eu du mal a lier les helpers de formulaire rails avec du code html... Et pour le reste j'avais pas trop d'idée de comment bien embellir à posteriori. Si tu es fort(e) en front et que tu veux me montrer un ou deux truc facile à implémenter dans mon code ce serait top.

Pour tester je te conseille de créer deux users (tu peux le faire directement sur le site ou alors via la console) et d'écrire un gossip chacun avec. Comme ça quand tu es connecté avec un compte tu pourras voir la différence sur la page de ton gossip et celle du gossip de l'autre user (accès a l'édition/supression). Ou de réparer mon seed si tu es brave.

Il y a une URL cachée qui ne fonctionne que si tu es connecté : http://localhost:3000/profile
Elle affiche le prénom de l'user connecté, si tu as créé l'user via le formulaire ça ne l'affichera donc pas car tu rentres juste l'email et le mot de passe, il faudra créer ou ajouter le first_name de l'user via la console.


