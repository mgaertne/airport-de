# encoding: utf-8
class ParkCalcPage
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
  end
  
  def park_gebuehren
    return nil
  end
  
end
