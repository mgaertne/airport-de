#language: de
Funktionalität: Langzeit-Feature
	Der Parkgebührenrechner kann die Gebühren für das Langzeitparken errechnen.
	
	Szenariogrundriss: Berechne die Langzeit-Parkgebühren
		Wenn ich mein Auto auf dem Long-Term Surface Parking-Parkplatz für <parkdauer> parke
		Dann muss ich <parkgebuehren> bezahlen
		
	Beispiele:
	| parkdauer					| parkgebuehren	|
	| 30 Minuten				| 2.00 €		|
	| 1 Stunde					| 2.00 €		|
	| 5 Stunden					| 10.00 €		|
	| 6 Stunden					| 10.00 €		|
	| 24 Stunden				| 10.00 €		|
	| 1 Tag, 1 Stunde			| 12.00 €		|
	| 1 Tag, 3 Stunden			| 16.00 €		|
	| 1 Tag, 6 Stunden			| 20.00 €		|
	| 6 Tage					| 60.00 €		|
	| 6 Tage, 1 Stunde			| 60.00 €		|
	| 7 Tage					| 60.00 €		|
	| 1 Woche, 2 Tage			| 80.00 €		|
	| 3 Wochen					| 180.00 €		|
