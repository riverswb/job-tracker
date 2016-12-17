require 'rails_helper'

describe "Categories can be deleted from the category index" do
  scenario "user deletes a category" do
    category_1 = Category.create(title: "One")
    category_2 = Category.create(title: "Two")
    count = Category.all.count

    visit categories_path

    expect(page).to have_content("All Categories")

    first(:link, "Delete").click

    expect(current_path).to eq(categories_path)
    expect(page).to have_content("The #{category_1.title} Category was successfully deleted")
    expect(page).to have_content("Two")
    expect(Category.all.count).to eq(count - 1)
  end
end
