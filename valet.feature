#language: de
Funktionalität: Valet-Parking-Feature
	Der Parkgebührenrechner ermittelt die Kosten des Valet-Parkings.
	
	Szenariogrundriss: Berechne die Valet-Parkgebühren
		Wenn ich mein Auto auf dem Valet Parking-Parkplatz für <parkdauer> parke
		Dann muss ich <parkgebuehren> bezahlen
		
	Beispiele:
	| parkdauer 			| parkgebuehren	|
	| 30 Minuten			| 12.00 €		|
	| 3 Stunden				| 12.00 €		|
	| 5 Stunden				| 12.00 €		|
	| 5 Stunden, 1 Minute	| 18.00 €		|
	| 12 Stunden			| 18.00 €		|
	| 24 Stunden			| 18.00 €		|
	| 1 Tag, 1 Minute		| 36.00 €		|
	| 3 Tage				| 54.00 €		|
	| 1 Woche				| 126.00 €		|
