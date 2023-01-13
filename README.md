# PMM - practica 4.1

Xavier Llabrés Drover
Pràctica 4.1 de Programació MultiMèdia
CDFG - Desenvolupameng Aplicacions Multimèdia
CIFP Pau Casesnoves

## L'APP

L'objectiu d'aquesta pràctica, es treballar amb la persistència de dades. 

S'ha creat aquesta petita APP amb un fucionament senzill. Es tracta d'una apliació encarregada de controlar la despesa que es pugui fer a un bar per exemple.

# Descripció
L'usuari, te diferents icones, cada icona representa el consum (cafè, tallat, aigua, copa, menjar, snack) que l'usuari pot fer al establiment. Al clicar sobre cada icona, abaix surt la despesa acumulada de l'usuari. D'aquesta manera, pot tenir un control.

A una segona pantalla, accedint a través de l'engrenatge, l'usuari pot variar els preus i tornar a posar la despesa a zero.

# Funcionament
Per tal de mantenir les dades quan s'aturi l'app. S'han implementat dues classes que empren SharedPreferences. Una de preus (de cada element) i l'altre de total (amb l'import acumulat).

S'ha separat en dues classes (ubicades dins la carpeta lib/data) per tal de separar els dos tipus de dades guardades. Tot i que s'hagués pogut realitzar a la mateixa.

També s'ha implementat un provider per tal de refrescar la informació en pantalla quan es clica sobre una icona.

Els preus s'ajusten de la pantalla de configuració. A aquesta pantalla es carregen i es guarden els preus al carregar la pantalla i al realitzar canvis (només es poden usar nombres i un punt per tal d'assegurar que s'escrigui un valor en format moneda),

A l'hora de fer els calculs de despesa, es recuperen tant l'import com el preu del producte desde els valors enmagetzemats.

Es guarda el nou import total (la despesa) des del mètode del provider, just abans de notificar els canvis.

