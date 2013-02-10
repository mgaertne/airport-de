# encoding: utf-8
class ParkCalcPage
  
  @@ParkdauerMap = {
    '30 Minuten' => ['05/04/2010', '12:00', 'AM', '05/04/2010', '12:30', 'AM']
  }

  attr :driver
  
  def initialize(driver)
    @driver = driver
    @driver.navigate.to 'http://www.shino.de/parkcalc/de'
  end
  
  def select(park_platz)
    selector = @driver.find_element(:name => 'ParkPlatz')
    selector.find_elements(:tag_name => 'option').find do |option|
      option.text == park_platz
    end.click
  end
  
  def enter_park_dauer(dauer)
    startDatum, startZeit, startZeitampm, abfahrDatum, abfahrZeit, abfahrZeitampm = @@ParkdauerMap[dauer]
    enter_into_field :name, 'StartDatum', startDatum
    enter_into_field :name, 'StartZeit', startZeit
    @driver.find_element(:xpath, "//input[@name='StartZeitampm' and @value='%s']" % startZeitampm).click
  end
  
  def enter_into_field(wie, was, wert)
    element = @driver.find_element(wie, was)
    element.clear
    element.send_keys(wert)
  end
  
  def park_gebuehren
    return nil
  end
  
end
