# encoding: utf-8
Wenn /^ich mein Auto auf dem Valet Parking-Parkplatz für (.*) parke$/ do |dauer|
  $parkcalc.select('Valet Parking')
  $parkcalc.enter_park_dauer(dauer)
end

Dann /^muss ich (.*) bezahlen$/ do |gebuehr|
  $parkcalc.park_gebuehren.should == gebuehr
end
