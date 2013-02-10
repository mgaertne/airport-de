# encoding: utf-8
Wenn /^ich mein Auto auf dem (.*)-Parkplatz für (.*) parke$/ do |parkplatz, dauer|
  $parkcalc.select(parkplatz)
  $parkcalc.enter_park_dauer(dauer)
end

Dann /^muss ich (.*) bezahlen$/ do |gebuehr|
  $parkcalc.park_gebuehren.should == gebuehr
end
