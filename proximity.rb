def taxi(p,q)
 (p[:lat] - q[:lat]).abs + (p[:long] - q[:long]).abs
end

my_results = [  {name: "six pack of beer", location: {lat: 37.767182, long: -122.5}}, 
                {name: "whacky glasses", location: {lat: 37.767182, long: -122.51}},
                {name: "whiskey bottle", location: {lat: 37.767282, long: -122.49}},
                {name: "diving goggles", location: {lat: 37.770282, long: -122.503}},
                {name: "running shoes", location: {lat: 37.7669, long: -122.457}},
                {name: "paint brushes", location: {lat: 37.76800, long: -122.4580}}]

def proximity_sort(results, current_location)
  xs = results.map do |x|
    x[:distance] = taxi(x[:location],current_location)
    x
  end
  xs.sort! {|left,right| left[:distance] <=> right[:distance] }
end

p proximity_sort(my_results,my_results[0][:location])
