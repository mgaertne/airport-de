# encoding: utf-8
class ParkCalcPage
  attr :driver
  
  def initialize(driver)
    @driver = driver
    @driver.navigate.to 'http://www.shino.de/parkcalc/de'
  end
  
  def select(park_platz)
  end
  
  def enter_park_dauer(dauer)
  end
  
end
