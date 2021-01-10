# mutt_configuration

Interactive configuration of the highly configurable mail client Mutt, to access GMail via IMAP.

Actually only for the french version of GMail.
Cause, the name of the directory int IMAP protocol are translated in french :(

## Introduction

Bonjour,
Aujourd’hui, j’en ai eu marre de voir la quantité de mémoire utilisée par Gmail dans le browser « Chromium », sans compter la gloutonnerie de « Chromium » qui bouffe 100 M° par onglet Aaaarrgggh !!!!!  

Et dire que j’ai commencé avec un C64.  
  
Dès lors je me suis mis en quête d’installer un client mail « léger » MUTT.
Pour l’installer, rien de plus simple,

```sh
sudo apt-get install mutt
```

Mais ensuite…
Eh bien ensuite, il faut le configurer, et là, ça prend du temps, mais néanmoins la documentation est complète et bien écrite.  Ce qui, soyons honnête n’est pas le cas de beaucoup de logiciels…
La première configuration brute, m’a créé des répertoires IMAP en double, en effet, Google crée des répertoires Imap différents selon la langue utilisée bin -> corbeille, draft -> brouillon, …  
J’ai donc adapté ma configuration, aux répertoires en français. Ensuite, je me suis dit que ce serait mieux avec une barre latérale droite comme l’original et après lecture de la documentation, il s’avère qu’il y en a une mais qui n’est pas active par défaut, alors je l’ai activée, j’ai également configuré les touches suivantes pour y naviguer :

>Ctrl + flèche gauche : ouvre où ferme la barre de menu latérale  
Ctrl + flèche haut : on se déplace dans la boîte mail du dessus.  
Ctrl + flèche basse : on se déplace dans la boîte mail du dessous.  
Ctrl + flèche droite : ouverture de la boîte mail sélectionnée.  

Ensuite, comme tout marche plutôt bien, j’ai fait un mini script afin de configurer le tout plus facilement sur « GitHub ».
<https://github.com/Gerald1973/mutt_configuration>
Lancez le script init.sh :

```sh
./init.sh
```

Comme la version Lynx est parfois rébarbative, vous pouvez visionner les attachement HTML dans votre browser préféré, mais il faudra installer les polices de caractères manquantes avant :

```sh
sudo apt-get install fonts-ipafont-gothic xfonts-100dpi xfonts-75dpi xfonts-cyrillic.
```

Des centaines de types mimes sont déjà supportés et configurés, dans le fichier:

>/etc/mailcap

## Note

To avoid some problems on Raspberry Pi to see the html in the browser, run the folowing command to
install some missing fonts. Because Chromium will generate the html in the directory /tmp and open it
in the browser.

```sh  
sudo apt-get install fonts-ipafont-gothic xfonts-100dpi xfonts-75dpi xfonts-cyrillic
```
