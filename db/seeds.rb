category_list = [
  ["Hi-top", "Hi-top.png"], 
  ["Low-top", "Low-top.jpg"], 
  ["Sporty", "Sporty-trainer.jpg"], 
  ["Designer", "designer.jpg"]
]

category_list.each do |name, image|
  Category.find_or_create_by(name: name) do |c|
    c.image = File.new("#{Rails.root}/db/images/categories/" + image )
  end
end