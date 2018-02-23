# Want to Discover THP ?

Pour voir l'app déployée, [c'est ici !](www.discover-thp.herokuapp.com/) :raised_hands:

Pour réaliser ce travail, nous avons brainstormé. Ensemble, nous avons décidé :
* de l'aspect global de la landing page
* des cibles à viser
* des outils à utilisers
* de la répartition des tâches

Justine et Louis ont travaillé sur le __bot Twitter__. 
Nicolas a travaillé sur __Google Analytics__ et l'intégration de __MailChimp__.
Samba a travaillé sur le __template CSS__ et la __charte graphique__.
Sylvain a travaillé sur le __wording__ des landing pages.

C'est la première fois que nous travaillons _tous ensemble sur un seul et même projet_. Il a fallu jongler, apprendre à se synchroniser. Un exercice formateur qui nous montre _ce à quoi il faudra faire attention au moment des projets finaux_. :pray:

---

## Stratégie d'acquisition :

### Cibles :dart:

Nous nous sommes concentrés sur __trois profils__ pour obtenir de l'acquisition :

1. __Les étudiants__ :school_satchel:

**Le message** : Ils peuvent profiter d’un trimestre de libre ou des vacances d'été pour s’essayer au code. Ils peuvent aussi enchaîner à la fin de ses études pour acquérir de nouvelles compétences. Attirés par le numérique, toujours à l'affût de bons plans adaptés à leur budget, THP est une aubaine pour eux.

2. __Les écoles__ :school:

**Le message** : les écoles et les BDEs sont des relais efficaces pour promouvoir une formation du type de THP, et pousser les étudiants à enrichir leurs compétences ! Ils ont tout intérêt à pousser les étudiants à opter pour THP : améliorer l'employabilité de ses étudiants et le classement de sa faculté/ de son école, renforcer le côté cool de sa fac/ de son BDE...

3. __Les entrepreneurs__ :necktie:

**Le message** : Ils souhaitent se former au code pour sortir un MVP ou simplement pour avoir des bases pour manager des profils techs. Ce sont les principaux freins au lancement de projets ou à l'obtention de poste de chef de projet digital. Des difficultés que l'on peut facilement dépasser avec THP.

### Metric :straight_ruler:

Nous avons connecté notre landing page à MailChimp. Notre principal KPI est donc le taux d'acquisition, i.e. nombre d'inscription d'adresses mail à nos infos et tips de code.

### Moyens :package:

#### Twitter
Création d'un bot twitter qui permet de s'adresser à nos trois cibles. Nous avons considéré que Twitter nous permettait de toucher de manière assez rapide et massive nos 3 cibles, en restant peu intrusifs.

**select_universities** : <br>
La méthode récupére des utilisateurs en fonction de notre critères de recherche (université, faculté...).

**tweet_universities** : <br>
Envoie un tweet à chacune des universités selectionnées, en leur suggérant de découvrir THP pour leurs étudiants.

**tweet_students** : <br>
La méthode permet de récupérer l'id des followers des universités. En utilisant .screen_name, on récupére leur nom d'utilisateur à partir de leur id, et on peut twitter sur le concept de THP.

**tweet_entrepreneurs** : <br>
La méthode permet de tweeter les followers de notre selection d'entrepreneurs.

**send_tweet** <br>
La méthode permet d'envoyer les tweets.

---

## Contenu

### Landings Pages :rocket:

1. Etudiants :school_satchel:

RDV sur [cette page](www.discover-thp.herokuapp.com/etudiants)

2. Ecoles :school:

RDV sur [cette page](www.discover-thp.herokuapp.com/ecoles)

3. Entrepreneurs :necktie:

RDV sur [cette page](www.discover-thp.herokuapp.com/entrepreneurs)

### Wordings :black_nib:

Le wording de chaque landing page ainsi que les atouts de THP changent d'une cible à l'autre :
* tutoiement pour plus de proximité
* mise en avant de l'intérêt des compétences numériques dans l'entrepreneuriat ou le monde des startups
* aspect communautaire, effet de groupe

---

## Analytics

### Google Analytics :bar_chart:

Installation de google analytics pour suivi :
* du trafic entrant par canaux d'acquisition
* de performance des différentes landings (taux de rebound, taux de conversion)


### Résultats :mailbox_with_mail:

Nous pensons que nous ne disposons pas d'assez de temps (vous non plus d'ailleurs) entre l'implémentation et la correction pour tirer des conclusions pertinentes. :broken_heart:

