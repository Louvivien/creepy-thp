# Want to Discover THP ?

Pour voir l'app déployée, [c'est ici !](https://discover-thp.herokuapp.com/)

## Stratégie d'acquisition :

### Cibles 

1. Les étudiants

**Le message** : Ils peuvent profiter d’un trimestre de libre pour s’essayer au code, ou pour acquérir de nouvelles compétences à la fin de leurs études. 

2. Les écoles

**Le message** : Ecoles, BDEs : ce sont des relais efficaces pour promouvoir une formation du type de THP, et pousser les étudiants à enrichir leurs compétences !


3. Les entrepreneurs

**Le message** : Ils souhaitent se former en code pour sortir un MVP ou simplement pour avoir des bases pour manager des profils techs


### Moyens

#### Twitter
Création d'un bot twitter qui permet de s'adresser à nos trois cibles. Nous avons considéré que Twitter nous permettait de toucher de manière assez rapide et massive nos 3 cibles, en restant peu intrusifs.

**select_universities** : <br>
La méthode récupére des utilisateurs en fonction de notre critères de recherche (université, faculté...)

**tweet_universities** : <br>
Envoie un tweet à chacune des universités selectionnées, en leur suggérant de découvrir THP pour leurs étudiants.

**tweet_students** : <br>
La méthode permet de récupérer l'id des followers des universités. En utilisant .screen_name, on récupére leur nom d'utilisateur à partir de leur id, et on peut twitter sur le concept de THP.

**tweet_entrepreneurs** : <br>
La méthode permet de tweeter les followers de notre selection d'entrepreneurs.

**send_tweet** <br>
La méthode permet d'envoyer les tweets


## Contenu

### Landings Pages

1. Etudiants

RDV sur [cette page](https://www.discover-thp.herokuapp.com/etudiants)

2. Ecoles

RDV sur [cette page](https://www.discover-thp.herokuapp.com/ecoles)

3. Entrepreneurs.

RDV sur [cette page](https://www.discover-thp.herokuapp.com/entrepreneurs)

### Wordings

Le wording de chaque landing page ainsi que les atouts de THP changent d'une cible à l'autre.

## Analytics

### Google Analytics

Installation de google analytics pour suivi :
- du trafic entrant par canaux d'acquisition
- de performance des différentes landings (taux de rebound, taux de conversion)

### Résultats

Nous n'avons pas assez de trafic sur nos landings pour arriver à des résultats concluants. 

