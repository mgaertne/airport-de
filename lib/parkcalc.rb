# encoding: utf-8
class ParkCalcPage
  
  @@parkplatzIdentifier = 'ParkPlatz'
  @@optionIdentifier = 'option'
  @@startPrefix = 'Start'
  @@abfahrPrefix = 'Abfahr'
  @@datumTemplate = "%sDatum"
  @@zeitTemplate = "%sZeit"
  @@amPMRadioButtonTemplate = "//input[@name='%sZeitampm' and @value='%s']"
  
  @@berechneButtonIdentifier = 'Submit'
  @@gebuehrenElementLocation = "//tr[td/div[@class='SubHead'] = 'voraussichtliche Parkgebühren']/td/span/b"
  
  @@ParkdauerMap = {
    '30 Minuten'              => ['05/04/2010', '12:00', 'AM', '05/04/2010', '12:30', 'AM'],
    '1 Stunde'                => ['05/04/2010', '12:00', 'AM', '05/04/2010', '01:00', 'AM'],
    '3 Stunden'               => ['05/04/2010', '12:00', 'AM', '05/04/2010', '03:00', 'AM'],
    '3 Stunden, 30 Minuten'   => ['05/04/2010', '12:00', 'AM', '05/04/2010', '03:30', 'AM'],
    '4 Stunden'               => ['05/04/2010', '12:00', 'AM', '05/04/2010', '04:00', 'AM'],
    '5 Stunden'               => ['05/04/2010', '12:00', 'AM', '05/04/2010', '05:00', 'AM'],
    '5 Stunden, 1 Minute'     => ['05/04/2010', '12:00', 'AM', '05/04/2010', '05:01', 'AM'],
    '6 Stunden'               => ['05/04/2010', '12:00', 'AM', '05/04/2010', '06:00', 'AM'],
    '7 Stunden'               => ['05/04/2010', '12:00', 'AM', '05/04/2010', '07:00', 'AM'],
    '12 Stunden'              => ['05/04/2010', '12:00', 'AM', '05/04/2010', '12:00', 'PM'],
    '12 Stunden, 30 Minuten'  => ['05/04/2010', '12:00', 'AM', '05/04/2010', '12:30', 'PM'],
    '24 Stunden'              => ['05/04/2010', '12:00', 'AM', '05/05/2010', '12:00', 'AM'],
    '1 Tag, 1 Minute'         => ['05/04/2010', '12:00', 'AM', '05/05/2010', '12:01', 'AM'],
    '1 Tag, 30 Minuten'       => ['05/04/2010', '12:00', 'AM', '05/05/2010', '12:30', 'AM'],
    '1 Tag, 1 Stunde'         => ['05/04/2010', '12:00', 'AM', '05/05/2010', '01:00', 'AM'],
    '1 Tag, 3 Stunden'        => ['05/04/2010', '12:00', 'AM', '05/05/2010', '03:00', 'AM'],
    '1 Tag, 5 Stunden'        => ['05/04/2010', '12:00', 'AM', '05/05/2010', '05:00', 'AM'],
    '1 Tag, 6 Stunden'        => ['05/04/2010', '12:00', 'AM', '05/05/2010', '06:00', 'AM'],
    '1 Tag, 7 Stunden'        => ['05/04/2010', '12:00', 'AM', '05/05/2010', '07:00', 'AM'],
    '3 Tage'                  => ['05/04/2010', '12:00', 'AM', '05/07/2010', '12:00', 'AM'],
    '6 Tage'                  => ['05/04/2010', '12:00', 'AM', '05/10/2010', '12:00', 'AM'],
    '6 Tage, 1 Stunde'        => ['05/04/2010', '12:00', 'AM', '05/10/2010', '01:00', 'AM'],
    '7 Tage'                  => ['05/04/2010', '12:00', 'AM', '05/11/2010', '12:00', 'AM'],
    '1 Woche'                 => ['05/04/2010', '12:00', 'AM', '05/11/2010', '12:00', 'AM'],
    '1 Woche, 2 Tage'         => ['05/04/2010', '12:00', 'AM', '05/13/2010', '12:00', 'AM'],
    '3 Wochen'                => ['05/04/2010', '12:00', 'AM', '05/25/2010', '12:00', 'AM'],
  }

  attr :driver
  
  def initialize(driver)
    @driver = driver
    @driver.navigate.to 'http://www.shino.de/parkcalc/de'
  end
  
  def select(park_platz)
    selector = @driver.find_element(:name => @@parkplatzIdentifier)
    selector.find_elements(:tag_name => @@optionIdentifier).find do |option|
      option.text == park_platz
    end.click
  end
  
  def enter_park_dauer(dauer)
    startDatum, startZeit, startZeitampm, abfahrDatum, abfahrZeit, abfahrZeitampm = @@ParkdauerMap[dauer]
    fuelle_Datum_und_Uhrzeit_aus_fuer @@startPrefix, startDatum, startZeit, startZeitampm
    fuelle_Datum_und_Uhrzeit_aus_fuer @@abfahrPrefix, abfahrDatum, abfahrZeit, abfahrZeitampm
  end
  
  def fuelle_Datum_und_Uhrzeit_aus_fuer(formularPrefix, datum, uhrzeit, ampm)
    enter_into_field :name, @@datumTemplate % formularPrefix, datum
    enter_into_field :name, @@zeitTemplate % formularPrefix, uhrzeit
    @driver.find_element(:xpath, @@amPMRadioButtonTemplate % [ formularPrefix, ampm ]).click
  end
  
  def enter_into_field(wie, was, wert)
    element = @driver.find_element wie, was
    element.clear
    element.send_keys(wert)
  end
  
  def park_gebuehren
    berechne_park_gebuehren
    park_gebuehren_von_der_Seite
  end
  
  def berechne_park_gebuehren
    @driver.find_element(:name => @@berechneButtonIdentifier).click
  end
  
  def park_gebuehren_von_der_Seite
    @driver.find_element(:xpath => @@gebuehrenElementLocation).text
  end
  
end
