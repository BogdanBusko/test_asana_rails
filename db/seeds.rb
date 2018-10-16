10.times do
  Project.create(name: Faker::Name.first_name)
end



Project.all.each do |project|
  3.times do
    project.sections.create(name: Faker::Book.title)
  end
end

Section.all.each do |section|
  Faker::Number.between(5, 10).times do
    section.tasks.create(title: Faker::Name.name, description: Faker::Lorem.paragraph)
  end
end
