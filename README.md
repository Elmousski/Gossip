# Gossip

fait avec charlotte, joel, matthieu et émilie

ENONCÉ : 5. The Gossip Project
5.1 Le pitch

Chez THP, on est tous fan de cette superbe série d'anticipation qu'est Gossip girl et on va créer une plateforme pour pouvoir commérer tous ensemble 😏. Sur ce super réseau social, un utilisateur va s'inscrire, renseigner son prénom et nom, son mail et son age, puis il précisera sa ville avec une recherche par code postal. Il aura ensuite toutes les fonctionnalités qui feront de cette appli une future licorne :

    Les utilisateurs peuvent créer des potins : "askip john est célib hihi"
    Les utilisateurs en créant des potins peuvent mettre un ou plusieurs tags sur les potins : #romance
    Les utilisateurs peuvent commenter des potins : "ahiii j'savé pa lol 💁‍♂️"
    Et puisqu'une appli de potins sans un système BG de commentaire serait bidon, on va faire en sorte qu'il est possible de commenter des commentaires
    Les utilisateurs peuvent liker des potins
    Les utilisateurs peuvent contacter leur commères favories en MP pour des exclus mondiales

L'utilisateur pourra donc rechercher les potins par ville, par utilisateurs, par date (plus récent ou plus ancien), par nombre de likes, par tags, pour trouver les potins les plus croustillants.
5.2. Architecture

Nous allons te demander d'imaginer les modèles qu'il faut pour le blog, les relations possibles, puis évidemment les attributs de chaque model. En gros tu devras imaginer la structure complète de l'architecture. Donc fais péter les tableaux blancs avec ton équipe, et faites donc cette structure de base de données ensemble, en pensant aux models, aux associations, et aux attributs des models. C'est une excellent entraînement à l'architecture de base de données 😇
5.3. Les models
5.3.1. LES BASES

Commence par créer une application rails, puis mets les bonnes versions de ruby et rails dans le Gemfile.
5.3.2. LES USERS

Crée une classe user, qui aura comme attributs :

    Un first_name, qui est un string
    Un last_name, qui est un string
    Un description, qui est un text
    Un email, qui est un string
    Un age, qui est un integer

Tu vas faire 10 utilisateurs en base avec Faker.
5.3.3. LES VILLES

Crée une classe city, qui aura comme attributs :

    Un name, qui est un string
    Un postal_code, qui est un integer

Un utilisateur appartient à une seule ville mais une ville peut contenir plusieurs utilisateurs. Tu vas faire 10 villes en base avec Faker. Tu les lieras avec les utilisateurs.
5.3.4. LES GOSSIPS

Crée une classe gossip, qui aura comme attributs :

    Un title, qui est un string
    Un content, qui est un text
    Un date, qui est un timestamps

Un utilisateur peut écrire plusieurs gossips mais un gossip ne peut être écrit que par un seul utilisateur. Tu vas faire 20 gossips en base avec Faker. Tu vas les lier avec leur auteur.
5.3.5. LES TAGS

Crée une classe tag, qui aura comme attributs :

    Un title, qui est un string

Un gossip peut avoir plusieurs tags et un tag peut être présent sur plusieurs gossip (genre #rumeur). Tu vas faire 10 tags en base avec Faker. Chaque gossip aura (au minimum) un tag.
#Etapes :

    git clone du dossier
    bundle install (dans le dossier)
    rails db:migrate
    rails db:seed
