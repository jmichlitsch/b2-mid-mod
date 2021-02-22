require "rails_helper"

RSpec.describe "As a visitor on the Mechanics Index page" do
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
    end

  describe "I see the name of each mechanic in the page" do
    it "Has a link to 'Update' next to each mechanic" do
      visit "/mechanics"
      expect(page).to have_content(@mechanic1.name)
      expect(page).to have_content(@mechanic2.name)
      within("#index-mechanic-#{@mechanic1.id}") do
      expect(page).to have_link("Update")
              click_link("Update")
      end
    end
  end
end
