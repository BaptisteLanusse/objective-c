# objective-c
```
Cette partie teste Objective-C et XCode pour le développement d'applications iOS.
```
    OS X El Capitan
    Version 10.11.1
    Intel Core i5 3,2 GHz
    16 Go Ram

# Liste des commandes

```
cmd + <-			=>			Rotation à gauche
cmd + ->			=>			Rotation à droite
cmd + L 			=>			Verrouiller
Ctrl + cmd + Z 		=>			Secousse
Maj + cmd + H 		=>			Ecran d'accueil
```

# Outils de comparaison
Les tests sont effectués via l'instruction if.

Les traitements sont traités dans l'autre suivant:

```
Parenthèses                         |                   ()
Changement de signe                 |                   -
incrémentation ou décrémentation    |                   ++ et --
Négation                            |                   !
Multiplication, division, modulo    |                   *, / et %
Addition, soustraction              |                   + et -
tests supériorité, infériorité      |                   <, <=, > et >=
Egalité, différence                 |                   == et !=
ET logique                          |                   &&
OU logique                          |                   ||
Affectation                         |                   =
```

# Switch
```objective-c
switch (variable)
{
	case valeur1:
		//instructions;
		break;
	case valeur2:
		//instructions;
		break;
	case valeur3:
		//instructions;
		break;
	...
	default:
		//instructions;
		break;
}
```

# Les Boucles
Boucle for:
```objective-c
for (début; condition de fin; incrément)
{
	//instructions
}
```

Boucle while:
```objective-c
while(condition)
{
	//instructions
}
```

Boucle do-while
```objective-c
do
{
	//instructions
}while(condition)
```

# Les fonctions
```objective-c
type nom(paramètres)
{
	//instructions
	return retour;
}
```

# Programmation orientée objet
Séparation des fichiers en headers et corps.

Les fichiers headers sont mentionnés ```.h```