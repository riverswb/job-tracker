require 'rails_helper'

describe "User deletes an existing job" do
  scenario "a user can delete a job" do
    job = Job.first
    company = Company.all[1]
    visit company_job_path(company, job)
    content = "The #{company.name} #{job.title} position was successfully deleted!"

    click_on "Delete"

    expect(current_path).to eq(companies_path)
    expect(page).to have_content(content)
  end
end
