require "rails_helper"

RSpec.describe "comedians index page", type: :feature do
  it "user can see all comedians" do
    comedian_1 = Comedian.create(name: "Whoopi Goldberg", age: 61, city: "New York City")
    comedian_2 = Comedian.create(name: "Ellen DeGeneres", age: 63, city: "Metairie")

    visit "/comedians"

    save_and_open_page

    within "#comedian-#{comedian_1.id}" do
      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content("City: #{comedian_1.city}")
      expect(page).to have_content("Age: #{comedian_1.age}")
    end

    within "#comedian-#{comedian_2.id}" do
      expect(page).to have_content(comedian_2.name)
      expect(page).to have_content("Age: #{comedian_2.age}")
      expect(page).to have_content("City: #{comedian_2.city}")
    end
  end
end
