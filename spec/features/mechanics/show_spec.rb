require "rails_helper"

RSpec.describe "As a visitor on a Mechanics show page" do
  before :each do
    @mechanic1 = Mechanic.create!(
      name: "Bob",
      years_experience: 10)
    @mechanic2 = Mechanic.create!(
      name: "John",
      years_experience: 3
    )
    @mechanic3 = Mechanic.create!(
      name: "Tim",
      years_experience: 4)

    @ride1 = Ride.create!(
      name: "Awesome Ride",
      thrill_rating: 10,
      open: true
    )

    @ride2 = Ride.create!(
      name: "Boring Ride",
      thrill_rating: 1,
      open: true
    )
    @ride3 = Ride.create!(
      name: "Ride Ride",
      thrill_rating: 5,
      open: true
    )
    @ride4 = Ride.create!(
      name: "Closed Ride",
      thrill_rating: 10,
      open: false
    )
    @mechanic1.rides << [@ride1, @ride2, @ride3, @ride4]
  end

  describe "I see the mechanics name, age & specialty" do
    it "Shows all ride names associated with this mechanic" do
      visit "/mechanics/#{@mechanic1.id}"
      expect(page).to have_content(@mechanic1.name)
      expect(page).to have_content(@mechanic1.years_experience)
      expect(page).to have_content(@ride1.name)
      expect(page).to have_content(@ride2.name)
      expect(page).to have_content(@ride3.name)
      visit "/mechanics/#{@mechanic1.id}"
      save_and_open_page
      expect(page).to have_content(@mechanic1.name)
      expect(page).to have_content(@mechanic1.years_experience)
      expect(page).to have_content(@ride1.name)
      expect(page).to have_content(@ride3.name)
    end
  end
end
