# require 'http'

# response = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json")
# markets = response.parse(:json)


# #show all farmers markets
# count = 0
# close_to_cuse_markets = []

# markets.each do |market|
#   if market['phone'][0...3] == '315'
#     count += 1
#     close_to_cuse_markets << market
#     p "I AM NEAR SYRACUSE"
#   end
# end
# p count
# pp close_to_cuse_markets
    

require 'http'

 
full_or_part_time = ['P','F']
response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")

employees = response.parse(:json)
full_time= [] 

#show all the employees who work full time

employees.each do |employee|

  p employee['name'] 
  p employee['full_or_part_time']

  if employee['full_or_part_time'] == 'P'
    p "Part time!"
    elsif employee['full_or_part_time'] == 'F'
      p "FULL TIME"
  end 
end
p employees['full_or_part_time'].to_s
#full employee or part-time
# p employees[name]




# if employee['full_or_part_time'] == 'F'
#   full_or_part_time << full_time
#   p "#{:employee['name']} is a Full Time: employee"
# elsif employee['full_or_part_time'] == 'P'
#   p "#{employee['name']} is a Part Time: employee"
# else
#   p "None of your business!!!!!"
# end