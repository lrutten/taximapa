# Mama Papa Taxi taak

Ontwerp, implementeer en demonstreer een Erlang programma
dat dagdagelijkse activiteiten in een gezin ondersteunt.

Het probleemdomein van de taak is het mama-papa-taxi probleem.
De kinderen gaan naar allerlei buitenschoolse activiteiten en meestal worden ze
met de auto gebracht. Het plannen van al deze activiteiten is meestal een probleem
en geschikte software zou hierbij zou wel handig zijn.

Het doel van deze taak is het ontwerp van een Erlang programma
dat in staat is om een model bestaande uit personen, auto's en activiteiten uit te voeren.
Met uitvoeren wordt bedoeld dat, terwijl het programma de werkelijke tijd doorloopt, de toestand van de auto's en personen
wijzigt (rijden/niet rijden) volgens de geplande activiteiten.

Bij het opzetten van het experiment worden een vast aantal auto's, personen en activiteiten gemaakt.
Het experiment bepaalt voor alle activiteiten welke personen en auto's betrokken zijn in een bepaalde activiteit.
Hier worden de agenda's van de betrokken entiteiten aangevuld. En in de loop van de tijd
worden deze agenda's uitgevoerd. Hierdoor kunnen de toestanden van de entiteiten wijzigen.

Het vertrekpunt bestaat uit volgende modules:

* wereldmodule (optioneel, bevat een familie)
* familiemodule die bevat
    + resources: auto's, ouders, kinderen
    + activiteiten: woonwerkverplaatsingen, school, ...
* erlang modules voor de resources en activiteiten

Alle resources en activiteiten hebben een logboek (verleden), een toestand en een eigen agenda (toekomst).

Werk incrementeel en laat *intelligent beslissen* tot het laatste (ttz. het blijft meestal future work).

Begin met elementaire, keuzevrije activiteiten: *ga van A naar B op tijd X met reisduur Y met resources R, Q en P*.

Gebruik `send_after` om gebeurtenissen te simuleren (e.g. vertrek naar school).

Pak eerst samengestelde activiteiten (keuzevrij) aan (bvb. werkdag, werkweek),
pas daarna mechanismes die zelf oplossingen zoeken en kiezen.


Als de basis werkt, kies dan een verdere uitwerking:

1. intelligent beslissen, bvb. met voorkeur voor de 'normale gang van zaken'.
2. GUI (cowboy webinterface), ...
3. Google maps voor rijtijden, ...
4. Google Calendar, ...
5. ...


