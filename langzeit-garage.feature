#language: de
Funktionalität: Langzeit-Garage-Feature
	Der Parkgebührenrechner kann die Gebühren für das Langzeit-Garagenparken errechnen.
	
	Szenariogrundriss: Berechne die Langzeit-Garagen-Parkgebühren
		Wenn ich mein Auto auf dem Long-Term Garage Parking-Parkplatz für <parkdauer> parke
		Dann muss ich <parkgebuehren> bezahlen
		
	Beispiele:
	| parkdauer					| parkgebuehren	|
	| 30 Minuten				| 2.00 €		|
	| 1 Stunde					| 2.00 €		|
	| 3 Stunden					| 6.00 €		|
	| 7 Stunden					| 12.00 €		|
	| 24 Stunden				| 12.00 €		|
	| 1 Tag, 1 Stunde			| 14.00 €		|
	| 1 Tag, 3 Stunden			| 18.00 €		|
	| 1 Tag, 7 Stunden			| 24.00 €		|
	| 6 Tage					| 72.00 €		|
	| 6 Tage, 1 Stunde			| 72.00 €		|
	| 7 Tage					| 72.00 €		|
	| 1 Woche, 2 Tage			| 96.00 €		|
	| 3 Wochen					| 216.00 €		|
