#language: de
Funktionalität: Economy-Park-Feature
	Der Parkgebührenrechner kann die Gebühren für das Economy-Parken errechnen.
	
	Szenariogrundriss: Berechne die Economy-Parkgebühren
		Wenn ich mein Auto auf dem Economy Parking-Parkplatz für <parkdauer> parke
		Dann muss ich <parkgebuehren> bezahlen
		
	Beispiele:
	| parkdauer			| parkgebuehren	|
	| 30 Minuten		| 2.00 €		|
	| 1 Stunde			| 2.00 €		|
	| 4 Stunden			| 8.00 €		|
	| 5 Stunden			| 9.00 €		|
	| 6 Stunden			| 9.00 €		|
	| 24 Stunden		| 9.00 €		|
	| 1 Tag, 1 Stunde	| 11.00 €		|
	| 1 Tag, 3 Stunden	| 15.00 €		|
	| 1 Tag, 5 Stunden	| 18.00 €		|
	| 6 Tage			| 54.00 €		|
	| 7 Tage			| 54.00 €		|
	| 1 Woche, 2 Tage	| 72.00 €		|
	| 3 Wochen			| 162.00 €		|
