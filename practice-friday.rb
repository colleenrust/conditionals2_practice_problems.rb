require 'http'

response = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json")
markets = response.parse(:json)


#show all farmers markets
count = 0
close_to_cuse_markets = []

markets.each do |market|
  if market['phone'][0...3] == '315'
    count += 1
    close_to_cuse_markets << market
    p "I AM NEAR SYRACUSE"
  end
end
p count
pp close_to_cuse_markets