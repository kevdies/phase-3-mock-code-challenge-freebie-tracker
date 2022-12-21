puts "Creating companies..."

Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(name: "shirt", value: 10, dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(name: "mug", value: 15, dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(name: "airpods", value: 200, dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(name: "macbook", value: 2000, dev_id: rand(1..4), company_id: rand(1..4))
Freebie.create(name: "jersey", value: 100, dev_id: rand(1..4), company_id: rand(1..4))

puts "Seeding done!"
