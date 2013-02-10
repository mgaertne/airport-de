#language: de
Funktionalität: Kurzzeitparken-Feature
	Der Parkgebührenrechner kann die Gebühren für das Kurzzeitparken errechnen.
	
	Szenariogrundriss: Berechne die Kurzzeit-Parkgebühren
		Wenn ich mein Auto auf dem Short-Term Parking-Parkplatz für <parkdauer> parke
		Dann muss ich <parkgebuehren> bezahlen
		
	Beispiele:
	| parkdauer					| parkgebuehren	|
	| 30 Minuten				| 2.00 €		|
	| 1 Stunde					| 2.00 €		|
	| 3 Stunden, 30 Minuten		| 7.00 €		|
	| 12 Stunden				| 24.00 €		|
	| 12 Stunden, 30 Minuten	| 24.00 €		|
	| 1 Tag, 30 Minuten			| 25.00 €		|
	| 1 Tag, 1 Stunde			| 26.00 €		|
	