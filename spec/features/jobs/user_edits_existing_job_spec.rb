require 'rails_helper'

describe "User edits an existing job" do
  scenario "a user can edit a job" do
    job = Job.first
    company = Company.all[1]
    visit edit_company_job_path(company, job)
    # save_and_open_page

    fill_in "job[title]", with: "MS Word Technitian"
    fill_in "job[level_of_interest]", with: 1
    fill_in "job[city]", with: "Greeley"
    click_on "Update"

    expect(current_path).to eq(job_path(job))
    expect(page).to have_content("MS Word Technitian")
    expect(page).to have_content(1)
    expect(page).to have_content("Greeley")

    expect(page).to_not have_content("Developer")
    expect(page).to_not have_content(85)
    expect(page).to_not have_content("Denver")
  end
end
